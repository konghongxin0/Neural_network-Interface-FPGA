module connect#(
parameter maxl=5,
parameter sizein=32,
parameter sizew=8,
parameter sizeout=40
)
(
input clk,
input rst,
input start,

output reg[7:0] rlayer,//the layer to be read
output reg[7:0] rn,//the neuron to be read
output reg[7:0] rin,//the input of a neuron
output reg rmode,//0: read input, 1: read weight/bias
output reg rs,//start
input[sizein-1:0] ram_in,
input[sizew-1:0] ram_w,
input rf,//finished

output reg[7:0] result,
output reg finished,
output [31:0] debug,
output [31:0] debug1 
);

endmodule
