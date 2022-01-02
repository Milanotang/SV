module data_type;

// TODO-1: distinguish signed and unsigned type
initial begin: signed_vs_unsigned
  byte b0;
  bit[7:0] b1; 
  b0 = 'b1000_0000;
  $display("byte variable b0 = %d", b0);
  b1 = b0;
  $display("bit vector variable b1 = %d", b1);
end
endmodule