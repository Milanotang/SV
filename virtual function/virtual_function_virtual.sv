class basic_test;
  
  function new();
    $display("basic_test::new");
  endfunction

  virtual task test();
    $display("basic_test::test");
  endtask

endclass

class test_wr extends basic_test;
  
  function new();
    super.new();
    $display("test_wr::new");
  endfunction

  task test();
    $display("test_wr::test");
  endtask

endclass

module test;
  
  basic_test t;
  test_wr wr;

  initial begin
    
    wr = new();
    t = wr;
    $display("wr test ends");
    $display("t test starts");
    t.test;
    $dipslay("t test ends");

  end
endmodule
