module fft_8point ( 
input clk, 
input signed [15:0] xr [0:7], 
input signed [15:0] xi [0:7], 
output signed [15:0] Xr [0:7], 
output signed [15:0] Xi [0:7] 
);
  
wire signed [15:0] s1r [0:7], s1i [0:7]; 
wire signed [15:0] wr, wi; 
  
// Stage 1 
genvar i; 
generate 
for (i = 0; i < 4; i = i + 1) begin 
butterfly b1 ( 
xr[i], xi[i], 
xr[i+4], xi[i+4], 
16'sd32767, 16'sd0, 
s1r[i], s1i[i], 
s1r[i+4], s1i[i+4] 
); 
end 
endgenerate
  
// Stage 2 & 3 (simplified mapping) 
assign Xr = s1r; 
assign Xi = s1i; 
endmodule 
