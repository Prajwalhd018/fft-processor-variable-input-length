module butterfly ( 
input  signed [15:0] xr, xi, 
input  signed [15:0] yr, yi, 
input  signed [15:0] wr, wi,   // Twiddle 
output signed [15:0] out1_r, out1_i, 
output signed [15:0] out2_r, out2_i 
); 
  
// y * W 
wire signed [31:0] mul_r, mul_i; 
assign mul_r = yr * wr - yi * wi; 
assign mul_i = yr * wi + yi * wr; 
  
// Scaling (Q15) 
wire signed [15:0] twr = mul_r >>> 15; 
wire signed [15:0] twi = mul_i >>> 15; 
assign out1_r = xr + twr; 
assign out1_i = xi + twi; 
assign out2_r = xr - twr; 
assign out2_i = xi - twi; 
endmodule
