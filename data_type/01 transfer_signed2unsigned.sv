module transfer_signed2unsigned;

  byte signed_vec = 8'b1000_0000;
  bit  [8:0] result_vec;

  initial begin
    result_vec = signed_vec;
    $display("@1 result_vec = 'h%x", result_vec);
    result_vec = unsigned'(signed_vec);
    $display("@2 result_vec = 'h%x", result_vec);
  end

endmodule
