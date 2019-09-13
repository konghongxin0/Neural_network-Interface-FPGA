module neuron#(
parameter sizein=40,
parameter sizew=8,
parameter sizeout=40
)
(
input [sizein-1:0] in0,
input [sizein-1:0] in1,
input [sizein-1:0] in2,
input [sizein-1:0] in3,
input [sizein-1:0] in4,
input [sizein-1:0] in5,
input [sizein-1:0] in6,
input [sizein-1:0] in7,
input [sizew-1:0] w0,
input [sizew-1:0] w1,
input [sizew-1:0] w2,
input [sizew-1:0] w3,
input [sizew-1:0] w4,
input [sizew-1:0] w5,
input [sizew-1:0] w6,
input [sizew-1:0] w7,
input [sizew-1:0] b,
output reg [sizeout-1:0] out
);

reg[7:0] i;
reg[sizeout-1:0] temp;

wire [sizein-1:0] m0,m1,m2,m3,m4,m5,m6,m7;

assign m0[sizein-2:0]=in0[sizein-2:0]*w0[sizew-2:0];
assign m0[sizein-1]=in0[sizein-1]^w0[sizew-1];
assign m1[sizein-2:0]=in1[sizein-2:0]*w1[sizew-2:0];
assign m1[sizein-1]=in1[sizein-1]^w1[sizew-1];
assign m2[sizein-2:0]=in2[sizein-2:0]*w2[sizew-2:0];
assign m2[sizein-1]=in2[sizein-1]^w2[sizew-1];
assign m3[sizein-2:0]=in3[sizein-2:0]*w3[sizew-2:0];
assign m3[sizein-1]=in3[sizein-1]^w3[sizew-1];
assign m4[sizein-2:0]=in4[sizein-2:0]*w4[sizew-2:0];
assign m4[sizein-1]=in4[sizein-1]^w4[sizew-1];
assign m5[sizein-2:0]=in5[sizein-2:0]*w5[sizew-2:0];
assign m5[sizein-1]=in5[sizein-1]^w5[sizew-1];
assign m6[sizein-2:0]=in6[sizein-2:0]*w6[sizew-2:0];
assign m6[sizein-1]=in6[sizein-1]^w6[sizew-1];
assign m7[sizein-2:0]=in7[sizein-2:0]*w7[sizew-2:0];
assign m7[sizein-1]=in7[sizein-1]^w7[sizew-1];

always@(m0,m1,m2,m3,m4,m5,m6,m7,b)begin
	out=0;
	if(m0[sizein-1])begin
		temp=m0[sizein-2:0];
		out=~temp+1;
	end
	else begin
		out=m0[sizein-2:0];
	end
	if(m1[sizein-1])begin
		temp=m1[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m1[sizein-2:0];
	end
	if(m2[sizein-1])begin
		temp=m2[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m2[sizein-2:0];
	end
	if(m3[sizein-1])begin
		temp=m3[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m3[sizein-2:0];
	end
	if(m4[sizein-1])begin
		temp=m4[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m4[sizein-2:0];
	end
	if(m5[sizein-1])begin
		temp=m5[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m5[sizein-2:0];
	end
	if(m6[sizein-1])begin
		temp=m6[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m6[sizein-2:0];
	end
	if(m7[sizein-1])begin
		temp=m7[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m7[sizein-2:0];
	end
	if(b[sizew-1])begin
		temp=b[sizew-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+b[sizew-2:0];
	end
end


endmodule


module neuron32#(
parameter sizein=32,
parameter sizew=8,
parameter sizeout=32
)
(
input relu,
input [sizein-1:0] in0,
input [sizein-1:0] in1,
input [sizein-1:0] in2,
input [sizein-1:0] in3,
input [sizein-1:0] in4,
input [sizein-1:0] in5,
input [sizein-1:0] in6,
input [sizein-1:0] in7,
input [sizein-1:0] in8,
input [sizein-1:0] in9,
input [sizein-1:0] in10,
input [sizein-1:0] in11,
input [sizein-1:0] in12,
input [sizein-1:0] in13,
input [sizein-1:0] in14,
input [sizein-1:0] in15,
input [sizein-1:0] in16,
input [sizein-1:0] in17,
input [sizein-1:0] in18,
input [sizein-1:0] in19,
input [sizein-1:0] in20,
input [sizein-1:0] in21,
input [sizein-1:0] in22,
input [sizein-1:0] in23,
input [sizein-1:0] in24,
input [sizein-1:0] in25,
input [sizein-1:0] in26,
input [sizein-1:0] in27,
input [sizein-1:0] in28,
input [sizein-1:0] in29,
input [sizein-1:0] in30,
input [sizein-1:0] in31,
input [sizew-1:0] w0,
input [sizew-1:0] w1,
input [sizew-1:0] w2,
input [sizew-1:0] w3,
input [sizew-1:0] w4,
input [sizew-1:0] w5,
input [sizew-1:0] w6,
input [sizew-1:0] w7,
input [sizew-1:0] w8,
input [sizew-1:0] w9,
input [sizew-1:0] w10,
input [sizew-1:0] w11,
input [sizew-1:0] w12,
input [sizew-1:0] w13,
input [sizew-1:0] w14,
input [sizew-1:0] w15,
input [sizew-1:0] w16,
input [sizew-1:0] w17,
input [sizew-1:0] w18,
input [sizew-1:0] w19,
input [sizew-1:0] w20,
input [sizew-1:0] w21,
input [sizew-1:0] w22,
input [sizew-1:0] w23,
input [sizew-1:0] w24,
input [sizew-1:0] w25,
input [sizew-1:0] w26,
input [sizew-1:0] w27,
input [sizew-1:0] w28,
input [sizew-1:0] w29,
input [sizew-1:0] w30,
input [sizew-1:0] w31,
input [sizew-1:0] b,
output reg [sizeout-1:0] out
);

reg[7:0] i;
reg[sizeout-1:0] temp;

wire [sizein-1:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31;

assign m0[sizein-2:0]=in0[sizein-2:0]*w0[sizew-2:0];
assign m0[sizein-1]=in0[sizein-1]^w0[sizew-1];
assign m1[sizein-2:0]=in1[sizein-2:0]*w1[sizew-2:0];
assign m1[sizein-1]=in1[sizein-1]^w1[sizew-1];
assign m2[sizein-2:0]=in2[sizein-2:0]*w2[sizew-2:0];
assign m2[sizein-1]=in2[sizein-1]^w2[sizew-1];
assign m3[sizein-2:0]=in3[sizein-2:0]*w3[sizew-2:0];
assign m3[sizein-1]=in3[sizein-1]^w3[sizew-1];
assign m4[sizein-2:0]=in4[sizein-2:0]*w4[sizew-2:0];
assign m4[sizein-1]=in4[sizein-1]^w4[sizew-1];
assign m5[sizein-2:0]=in5[sizein-2:0]*w5[sizew-2:0];
assign m5[sizein-1]=in5[sizein-1]^w5[sizew-1];
assign m6[sizein-2:0]=in6[sizein-2:0]*w6[sizew-2:0];
assign m6[sizein-1]=in6[sizein-1]^w6[sizew-1];
assign m7[sizein-2:0]=in7[sizein-2:0]*w7[sizew-2:0];
assign m7[sizein-1]=in7[sizein-1]^w7[sizew-1];
assign m8[sizein-2:0]=in8[sizein-2:0]*w8[sizew-2:0];
assign m8[sizein-1]=in8[sizein-1]^w8[sizew-1];
assign m9[sizein-2:0]=in9[sizein-2:0]*w9[sizew-2:0];
assign m9[sizein-1]=in9[sizein-1]^w9[sizew-1];
assign m10[sizein-2:0]=in10[sizein-2:0]*w10[sizew-2:0];
assign m10[sizein-1]=in10[sizein-1]^w10[sizew-1];
assign m11[sizein-2:0]=in11[sizein-2:0]*w11[sizew-2:0];
assign m11[sizein-1]=in11[sizein-1]^w11[sizew-1];
assign m12[sizein-2:0]=in12[sizein-2:0]*w12[sizew-2:0];
assign m12[sizein-1]=in12[sizein-1]^w12[sizew-1];
assign m13[sizein-2:0]=in13[sizein-2:0]*w13[sizew-2:0];
assign m13[sizein-1]=in13[sizein-1]^w13[sizew-1];
assign m14[sizein-2:0]=in14[sizein-2:0]*w14[sizew-2:0];
assign m14[sizein-1]=in14[sizein-1]^w14[sizew-1];
assign m15[sizein-2:0]=in15[sizein-2:0]*w15[sizew-2:0];
assign m15[sizein-1]=in15[sizein-1]^w15[sizew-1];
assign m16[sizein-2:0]=in16[sizein-2:0]*w16[sizew-2:0];
assign m16[sizein-1]=in16[sizein-1]^w16[sizew-1];
assign m17[sizein-2:0]=in17[sizein-2:0]*w17[sizew-2:0];
assign m17[sizein-1]=in17[sizein-1]^w17[sizew-1];
assign m18[sizein-2:0]=in18[sizein-2:0]*w18[sizew-2:0];
assign m18[sizein-1]=in18[sizein-1]^w18[sizew-1];
assign m19[sizein-2:0]=in19[sizein-2:0]*w19[sizew-2:0];
assign m19[sizein-1]=in19[sizein-1]^w19[sizew-1];
assign m20[sizein-2:0]=in20[sizein-2:0]*w20[sizew-2:0];
assign m20[sizein-1]=in20[sizein-1]^w20[sizew-1];
assign m21[sizein-2:0]=in21[sizein-2:0]*w21[sizew-2:0];
assign m21[sizein-1]=in21[sizein-1]^w21[sizew-1];
assign m22[sizein-2:0]=in22[sizein-2:0]*w22[sizew-2:0];
assign m22[sizein-1]=in22[sizein-1]^w22[sizew-1];
assign m23[sizein-2:0]=in23[sizein-2:0]*w23[sizew-2:0];
assign m23[sizein-1]=in23[sizein-1]^w23[sizew-1];
assign m24[sizein-2:0]=in24[sizein-2:0]*w24[sizew-2:0];
assign m24[sizein-1]=in24[sizein-1]^w24[sizew-1];
assign m25[sizein-2:0]=in25[sizein-2:0]*w25[sizew-2:0];
assign m25[sizein-1]=in25[sizein-1]^w25[sizew-1];
assign m26[sizein-2:0]=in26[sizein-2:0]*w26[sizew-2:0];
assign m26[sizein-1]=in26[sizein-1]^w26[sizew-1];
assign m27[sizein-2:0]=in27[sizein-2:0]*w27[sizew-2:0];
assign m27[sizein-1]=in27[sizein-1]^w27[sizew-1];
assign m28[sizein-2:0]=in28[sizein-2:0]*w28[sizew-2:0];
assign m28[sizein-1]=in28[sizein-1]^w28[sizew-1];
assign m29[sizein-2:0]=in29[sizein-2:0]*w29[sizew-2:0];
assign m29[sizein-1]=in29[sizein-1]^w29[sizew-1];
assign m30[sizein-2:0]=in30[sizein-2:0]*w30[sizew-2:0];
assign m30[sizein-1]=in30[sizein-1]^w30[sizew-1];
assign m31[sizein-2:0]=in31[sizein-2:0]*w31[sizew-2:0];
assign m31[sizein-1]=in31[sizein-1]^w31[sizew-1];

always@(relu,m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31,b)begin
	out=0;
	if(m0[sizein-1])begin
		temp=m0[sizein-2:0];
		out=~temp+1;
	end
	else begin
		out=m0[sizein-2:0];
	end
	if(m1[sizein-1])begin
		temp=m1[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m1[sizein-2:0];
	end
	if(m2[sizein-1])begin
		temp=m2[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m2[sizein-2:0];
	end
	if(m3[sizein-1])begin
		temp=m3[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m3[sizein-2:0];
	end
	if(m4[sizein-1])begin
		temp=m4[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m4[sizein-2:0];
	end
	if(m5[sizein-1])begin
		temp=m5[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m5[sizein-2:0];
	end
	if(m6[sizein-1])begin
		temp=m6[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m6[sizein-2:0];
	end
	if(m7[sizein-1])begin
		temp=m7[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m7[sizein-2:0];
	end
	if(m8[sizein-1])begin
		temp=m8[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m8[sizein-2:0];
	end
	if(m9[sizein-1])begin
		temp=m9[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m9[sizein-2:0];
	end
	if(m10[sizein-1])begin
		temp=m10[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m10[sizein-2:0];
	end
	if(m11[sizein-1])begin
		temp=m11[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m11[sizein-2:0];
	end
	if(m12[sizein-1])begin
		temp=m12[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m12[sizein-2:0];
	end
	if(m13[sizein-1])begin
		temp=m13[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m13[sizein-2:0];
	end
	if(m14[sizein-1])begin
		temp=m14[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m14[sizein-2:0];
	end
	if(m15[sizein-1])begin
		temp=m15[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m15[sizein-2:0];
	end
	if(m16[sizein-1])begin
		temp=m16[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m16[sizein-2:0];
	end
	if(m17[sizein-1])begin
		temp=m17[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m17[sizein-2:0];
	end
	if(m18[sizein-1])begin
		temp=m18[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m18[sizein-2:0];
	end
	if(m19[sizein-1])begin
		temp=m19[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m19[sizein-2:0];
	end
	if(m20[sizein-1])begin
		temp=m20[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m20[sizein-2:0];
	end
	if(m21[sizein-1])begin
		temp=m21[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m21[sizein-2:0];
	end
	if(m22[sizein-1])begin
		temp=m22[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m22[sizein-2:0];
	end
	if(m23[sizein-1])begin
		temp=m23[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m23[sizein-2:0];
	end
	if(m24[sizein-1])begin
		temp=m24[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m24[sizein-2:0];
	end
	if(m25[sizein-1])begin
		temp=m25[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m25[sizein-2:0];
	end
	if(m26[sizein-1])begin
		temp=m26[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m26[sizein-2:0];
	end
	if(m27[sizein-1])begin
		temp=m27[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m27[sizein-2:0];
	end
	if(m28[sizein-1])begin
		temp=m28[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m28[sizein-2:0];
	end
	if(m29[sizein-1])begin
		temp=m29[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m29[sizein-2:0];
	end
	if(m30[sizein-1])begin
		temp=m30[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m30[sizein-2:0];
	end
	if(m31[sizein-1])begin
		temp=m31[sizein-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+m31[sizein-2:0];
	end
	if(b[sizew-1])begin
		temp=b[sizew-2:0];
		out=out+(~temp+1);
	end
	else begin
		out=out+b[sizew-2:0];
	end
	if(out[sizeout-1])begin
		out[sizeout-2:0]=(~((out[sizeout-2:0]-1)))>>6;
	end
	else begin
		out=out>>6;
	end
	if(relu)begin
		if(out[sizeout-1])begin
			out=0;
		end
	end
end


endmodule
