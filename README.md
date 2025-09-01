# FREQUENCY-SCALAR
FREQUENCY SCALAR FOR THE PERIPHERAL COMMUNICATION
<BR>

AUTHOR- RAVI SHANKAR TIWARI
<br>

1.PROJECT OVERVIEW
<br>
Designed and implemented a parameterized clock divider module with user defined frquency scaling in the verilog HDL and the test bench for this module is in the system verilog hardware description language.This frequency scalar can be used to scale down the high frequency by user defined division factor.The division factor up to the 2^Width is allowed where the width is the parameter defined for the module and user can give the division factor in the testbench module.
<br>
2.MOTIVATION
<br>
In many digital systems, the system clock runs at a high frequency, while peripheral devices such as UART,SPI or I2C require much lower operating frequencies.A frequency scalar is used to bridge this gap by dividing the system clock to generate a slower clock for peripherals.This project was undertaken to design a confriguable frequency scalar that support user defined scaling, making it reusable and adaptable across different peripheral interfaces.
<br>
<br>

3.KEY FEATURES
<br>
1.Universal Clock Divider for both the odd and even division factors.
<br>
2.Parametric via N.
<br>
3.It can be used in the slow frequency peripherals such as universal asynchronous reciever and transmitter.
<br>
4.It can be used to generate standard UART Baud clock from a system clock.

<br>


4.METHODOLOGY
<br>
a>Designed the frequency scalar module in Verilog HDL with a parameter width.
<br>
b>Implemented logic to divide the input clock by a user-defined factor.
<br>
c>Created a SystemVerilog testbench to:
<br>
 ->Provide different division factors.
 <br>
 ->Monitor the output frequency.
 <br>
 ->Verify correctness of frequency scaling.
 <br>
d>Simulated the design to confirm funtionality across multiple division factors.
<br>

5.APPLICATIONS
<br>
a>Generating peripheral clocks from high-speed system clocks.
<br>
b>UART, SPI, I2C, and other serial communication protocols.
<br>
c>General-purpose clock division in FPGA and ASIC designs.
<br>
d>Power optimization by reducing operating frequency for subsystems.
<br>

6.RESULTS
<br>
a>Verified frequency division for multiple division factors.
<br>
b>Output clock observed to match the expected divided frequency.
<br>
c>Demonstrated scalability up to 2^width division.














