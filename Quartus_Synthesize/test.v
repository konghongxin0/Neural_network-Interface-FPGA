`timescale 1ns / 1ns

module test(
input clock,
input reset,
input[7:0] in,
input[7:0] in2,
output reg[31:0] out
);

reg clk,rst;

reg enable;

wire[39:0] nout;
wire[39:0] dd;
//neuron n0('b10,'h80000005,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,nout);
//neuron32 #(.sizein(40),.sizew(8),.sizeout(40)) n0_0(1,dd,40'h0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,2,nout);

/*
reg[7:0] rlayer;//the layer to be read
reg[7:0] rn;//the neuron to be read
reg[7:0] rin;//the input of a neuron
reg rmode;//0: read input, 1: read weight/bias
reg rs;//start
*/
reg[7:0] rnum;
reg[7:0] rsam;
wire[7:0] rlayer;//the layer to be read
wire[7:0] rn;//the neuron to be read
wire[7:0] rin;//the input of a neuron
wire rmode;//0: read input, 1: read weight/bias
wire rs;//start

parameter sizein=32;
parameter sizew=32;

wire[sizein-1:0] ram_in;
wire[sizein-1:0] ram_w;
wire rf;//finished

database #(.maxl(5),.sizein(sizein),.sizew(sizew)) db0(clk,rst,rnum,rsam,rlayer,rn,rin,rmode,rs,ram_in,ram_w,rf);

reg cstart;
wire[7:0] cresult;
wire cfinished;
wire[sizein-1:0] cdebug,cdebug1;

wire[sizein-1:0] prob0,prob1,prob2,prob3,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9;
connect #(.maxl(5),.sizein(sizein),.sizew(sizew),.sizeout(sizein)) cnt0(clk,rst,cstart,rlayer,rn,rin,rmode,rs,ram_in,ram_w,rf,cresult,cfinished,cdebug,cdebug1,prob0,prob1,prob2,prob3,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9);

reg[7:0] correct;
reg[7:0] state;

initial begin
	clk=0;
	rst=1;
	cstart=0;
	rnum=0;
	rsam=0;
	correct=0;
	state=0;
	//rlayer=2;
	//rn=1;
	//rin=3;
	//rs=0;
	//rmode=1;
	#4 rst=0;
	//#2 rs=1;
	//#4 rs=0;
	//#2 cstart=1;
	//#4 cstart=0;
	
end

always #1 begin
	clk<=~clk;
end


always@(posedge clk)begin
	if(rst)begin
	end
	else begin
		case(state)
		0:begin
			cstart<=1;
			state<=1;
		end
		1:begin
			cstart<=0;
			state<=2;
		end
		2:begin
			if(cfinished)begin
				if(cresult==rnum)begin
					correct<=correct+1;
				end
				if(rnum==9)begin
					if(rsam==9)begin
						state<=3;
					end
					else begin
						rsam<=rsam+1;
						state<=0;
					end
				end
				else begin
					if(rsam==9)begin
						rsam<=0;
						rnum<=rnum+1;
						state<=0;
					end
					else begin
						rsam<=rsam+1;
						state<=0;
					end
				end
			end
		end
		3:begin
		end
		endcase
	end
end

endmodule
