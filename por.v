//period 上电复位持续多少个周期
//wire rst; por#(.period(100))por(.clk(clk),.rst(rst));
module por #(
	parameter period = 1000 
)(
	input clk,
	output rst
 );
	reg [19:0] cnt_r;always@(posedge clk) if (rst)cnt_r <= cnt_r + 1; 
	assign rst = period > cnt_r;
endmodule 
