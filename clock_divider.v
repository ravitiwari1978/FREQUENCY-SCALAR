`timescale 1ns / 1ps

module clock_divider #(
    parameter WIDTH = 8  // Allows division factor up to 2^WIDTH
)(
    input  wire clk_in,         // Input clock of high frequency
    input  wire rst,            // Synchronous active-high reset
    input  wire [WIDTH-1:0] div, // Division factor input (should be more that 1 as is dision is done by 1 that the clock output would be a
                                 // buffer for the input.)
    output reg  clk_out         // Output clock obtained after the frquency scaling
);

    reg [WIDTH-1:0] counter = 0;

    always @(posedge clk_in) begin
        if (rst) begin     //if reset to system
            counter <= 0;
            clk_out <= 0;
        end else begin   //if reset is realeased
            if (counter == div/2 - 1) begin
                counter <= 0;  //make the counter again 0 if it reaches a required count
                clk_out <= ~clk_out;  // Toggle output clock when required count achieved
            end else begin
                counter <= counter + 1; //if count is not acheived then we have to increase the counter by 1 valu
            end
        end
    end

endmodule



