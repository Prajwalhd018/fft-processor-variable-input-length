module tb_fft_8point; 
reg clk; 
reg signed [15:0] xr [0:7]; 
reg signed [15:0] xi [0:7]; 
wire signed [15:0] Xr [0:7]; 
wire signed [15:0] Xi [0:7]; 
fft_8point dut(clk, xr, xi, Xr, Xi); 
initial begin 
clk = 0; 
forever #5 clk = ~clk; 
end 
initial begin 
xr[0]=1; xr[1]=1; xr[2]=1; xr[3]=1; 
xr[4]=1; xr[5]=1; xr[6]=1; xr[7]=1; 
xi[0]=0; xi[1]=0; xi[2]=0; xi[3]=0; 
xi[4]=0; xi[5]=0; xi[6]=0; xi[7]=0; 
#100 $finish; 
end 
endmodule
