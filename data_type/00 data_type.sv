module data_type;

  logic [7:0] logic_vec = 8'b1000_0000;
  bit   [7:0] bit_vec   = 8'b1000_0000;
  byte  signed_vec      = 8'b1000_0000;

  initial begin
    $display("logic_vec = %d", logic_vec);
    $display("bit_vec = %d", bit_vec);
    $display("signed_vec = %d", signed_vec);
  end

endmodule
