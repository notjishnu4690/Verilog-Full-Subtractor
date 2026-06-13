module tb;

reg A, B, bin;
wire diff, bout;

fullsubtractor uut(
.A(A),
.B(B),
.bin(bin),
.diff(diff),
.bout(bout)
);

initial begin

$dumpfile("wave.vcd");
$dumpvars(0, tb);

A=0; B=0; bin=0;

#10 A=0; B=0; bin=1;
#10 A=0; B=1; bin=0;
#10 A=0; B=1; bin=1;
#10 A=1; B=0; bin=0;
#10 A=1; B=0; bin=1;
#10 A=1; B=1; bin=0;
#10 A=1; B=1; bin=1;
#10$finish;

end
endmodule