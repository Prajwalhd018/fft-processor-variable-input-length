module complex_add_sub (
input  signed [15:0] ar, ai,
input  signed [15:0] br, bi,
output signed [15:0] sum_r, sum_i,
output signed [15:0] diff_r, diff_i
);

assign sum_r  = ar + br;
assign sum_i  = ai + bi;
assign diff_r = ar - br;
assign diff_i = ai - bi;

endmodule
