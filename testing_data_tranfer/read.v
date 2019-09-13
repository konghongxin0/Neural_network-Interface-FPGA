module read_wbin#(
parameter maxl=5,
parameter sizein=32,
parameter sizew=8
)
(
input clk,
input rst,

input[maxl*8-1:0] layers,

output reg [31:0] uaddr,
output reg [31:0] uwdata,
input[31:0] urdata,
output reg urw,
output reg ustart,
input ufinished,
input uerror,

input[7:0] rlayer,//the layer to be read
input[7:0] rn,//the neuron to be read
input[7:0] rin,//the input of a neuron
input rmode,//0: read input, 1: read weight/bias
input rs,//start
output reg[sizein-1:0] ram_in,
output reg[sizew-1:0] ram_w,
output reg rf,//finished
output[31:0] debug,
output[31:0] debug2
);


wire[31:0] axi_din,axi_dwb,mask;
assign axi_din=32'h2a800000;
assign axi_dwb=32'h2aa00000;
assign mask=32'hfffffffc;

parameter IDLE=0;
parameter ADDR=1;
parameter WAIT=2;
parameter READ=3;

reg [7:0] state;

reg[7:0] i_n,i_w,i_l;
reg[31:0] addr_count;
reg[31:0] real_addr;

assign debug=uaddr;
assign debug2=addr_count;

always@(posedge clk)begin
	if(rst)begin
		uaddr<=0;
		uwdata<=0;
		urw<=0;
		ustart<=0;
		ram_in<=0;
		ram_w<=0;
		rf<=0;
		state<=IDLE;
	end
	else begin
		case(state)
		IDLE:begin
			if(rs)begin
				uaddr<=0;
				urw<=0;
				ustart<=0;
				ram_in<=0;
				ram_w<=0;
				rf<=0;
				i_l<=0;
				i_n<=0;
				i_w<=0;
				addr_count<=0;
				state<=ADDR;
			end
			else begin
				state<=IDLE;
			end
		end
		ADDR:begin
			if(rmode==0)begin
				uaddr<=axi_din+4*rin;
				ustart<=1;
				state<=WAIT;
			end
			else begin
				if(i_l<rlayer)begin
					if(i_l==0)begin
						i_l<=i_l+1;
					end
					else begin
						addr_count<=addr_count+((layers>>(8*i_l))&'hff)*(((layers>>(8*(i_l-1)))&'hff)+1);
						i_l<=i_l+1;
					end
				end
				else begin
					ustart<=1;
					real_addr<=axi_dwb+addr_count+rn*((layers>>((8*(i_l-1)))&'hff)+1)+rin;
					uaddr<=(axi_dwb+addr_count+rn*((layers>>((8*(i_l-1)))&'hff)+1)+rin)&mask;
					state<=WAIT;
				end
			end
		end
		WAIT:begin
			ustart<=0;
			state<=READ;
		end
		READ:begin
			if(ufinished)begin
				if(rmode==0)begin
					rf<=1;
					ram_in<=urdata;
				end
				else begin
					rf<=1;
					ram_w<=(urdata>>(8*(real_addr-uaddr)))&'hff;
				end
				state<=IDLE;
			end
			else begin
				state<=READ;
			end
		end
		endcase
	end
end

endmodule

