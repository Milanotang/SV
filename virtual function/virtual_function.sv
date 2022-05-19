class basic_test;
  
  int fin;
  int def = 100;

  function new();
    $display("basic_test::new");
  endfunction

  task test();
    $display("basic_test::test");
  endtask

endclass

class test_wr extends basic_test;
  
  int def = 100;

  function new();
    super.new();
    $display("test_wr::new");
  endfunction

  task test();
    super.test();
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
    t.test();
    $display("t test ends");
  end

endmodule
