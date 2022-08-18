module array_find_item;
  
  int array[];
  int match[$];

  initial begin
    array = new[8];
    array = '{1,2,3,4,5,6,7,8};
    match = array.find with (item > 3);
    foreach(match[i]) begin
      $display("item which > 3 is %d", match[i]);
    end
  end

endmodule
