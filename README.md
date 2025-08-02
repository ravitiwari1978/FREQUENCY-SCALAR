# FREQUENCY-SCALAR
FREQUENCY SCALAR FOR THE PERIPHERAL COMMUNICATION
<BR>
AUTHOR- RAVI SHANKAR TIWARI

Dsigned and implemented a parameterized clock divider module with user defined frquency scaling in the verilog HDL and the test bench for this module is in the system verilog hardware description language.This frequency scalar can be used to scale down the high frequency by user defined division factor.The division factor up to the 2^Width is allowed where the width is the parameter defined for the module and user can give the division factor in the testbench module.

KEY FEATURES
1.Universal Clock Divider for both the odd and even division factors.
2.Parametric via N.
3.It can be used in the slow frequency peripherals such as universal asynchronous reciever and transmitter.
4.It can be used to generate standard UART Baud clock from a system clock.
