module counter(inf.DUT i_inf);
  
  reg [7:0] temp_count;
 
  // reset + add operation
  always @(posedge i_inf.clk, negedge i_inf.rst_n) 
    if (!i_inf.rst_n)           temp_count <= 0;
    else if (i_inf.load)        temp_count <= i_inf.data_in;
    else if (i_inf.enable)      temp_count++ ;
  
  assign i_inf.count = temp_count;
  

endmodule


