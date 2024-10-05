module top  (y_1, y_2, clk, wire0, wire1, wire2, wire3, wire4);
  output wire [(7'h5a):(1'h0)] y_1;
  output wire [(7'h5a):(1'h0)] y_2;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(4'hc):(1'h0)] wire0;
  input wire [(4'hd):(1'h0)] wire1;
  input wire signed [(4'hd):(1'h0)] wire2;
  input wire signed [(3'h5):(1'h0)] wire3;
  input wire signed [(5'h10):(1'h0)] wire4;
  top_1 #() top_1 (y_1, clk, wire0, wire1, wire2, wire3, wire4);
  top_2 #() top_2 (y_2, clk, wire0, wire1, wire2, wire3, wire4);
  always
    @(posedge clk) begin
      assert ((y_1 == y_2));
    end
endmodule