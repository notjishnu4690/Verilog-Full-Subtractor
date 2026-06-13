module fullsubtractor(

input  A,
input  B,
input  bin,
output diff,
output bout
);

assign diff = A ^ B ^ bin;
assign bout = (~A&B) | (B&bout) | (~A&bout);

endmodule