`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//there is no any input in the testbench of the dut
module testbench;
//we can may use paranthesis()in the suffix to the name of the testbench module name
//in the system verilog we can use the local instead of reg and the wire type .
    logic clk_in; 
    logic rst;
    logic clk_out;
    logic [7:0] div;

    // Instantiate the DUT
    clock_divider #(.WIDTH(8)) dut (
        .clk_in(clk_in),
        .rst(rst),
        .div(div),
        .clk_out(clk_out)
    );

    // Clock generator
    initial begin
        clk_in = 0;
        forever #5 clk_in = ~clk_in;
    end

    // Test procedure for frquency scaling
    initial begin
        
        div = 8'd7;
        //user defined div factor

        rst = 1;
        #20;
        rst = 0;

        // Simulate for some time
        #1000;
        $finish;
    end

endmodule

