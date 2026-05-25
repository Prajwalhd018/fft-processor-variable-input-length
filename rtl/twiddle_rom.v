module twiddle_rom ( 
input  [2:0] addr, 
output reg signed [15:0] wr, 
output reg signed [15:0] wi 
); 
  
always @(*) begin 
case (addr) 
3'd0: begin wr = 16'sd32767; wi = 16'sd0; end        // W0 
3'd1: begin wr = 16'sd23170; wi = -16'sd23170; end   // W1 
3'd2: begin wr = 16'sd0;     wi = -16'sd32768; end   // W2 
3'd3: begin wr = -16'sd23170;wi = -16'sd23170; end   // W3 
default: begin wr = 0; wi = 0; end 
endcase 
end 
endmodule
