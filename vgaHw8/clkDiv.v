`timescale 1ns / 1ps

module clkDiv(
  input clk,
output slowclock
    ); 
parameter[20:0] maxValue=1; // 
reg [20:0] counter=0;
reg slowclk=0;

always @(posedge clk)
begin
counter<=counter+1;
if(counter==maxValue)begin
slowclk <=!slowclk;
counter<=0;
end 
end
 assign slowclock=slowclk;
endmodule
