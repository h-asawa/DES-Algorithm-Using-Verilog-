module test_P;
  reg [64:1] MSG;
  reg [64:1] KEY;
  wire [64:1] OUT;

  DES des_inst(MSG, KEY, OUT);

  initial begin
    MSG = 64'h0123456789ABCDEF;
    KEY = 64'h133457799BBCDFF1;
  end
  initial $monitor($time, " MSG=0x%x, KEY=0x%x, OUT=0x%x", MSG, KEY, OUT);
endmodule
