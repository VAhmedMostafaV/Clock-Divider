module clock_divider(input clk,reset , output reg clk_div);

reg [25:0]counter;

always@(posedge clk , posedge reset)
begin
  if(reset)
    begin
      counter<=0;
      clk_div<=0;
    end
  else
    begin
      if(counter<25000000)
         counter <= counter + 1; 
      else
          begin
            counter<=0;
            clk_div <= ~clk_div;
          end 
    end
end
endmodule