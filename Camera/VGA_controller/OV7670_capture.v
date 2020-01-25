
module OV7670_capture(pclk,
					  vsync,
					  href,
					  d,
					  addr,
					  dout,
					  we
					  );

input wire pclk;   // 25MHz clock
input wire vsync;
input wire href;
input wire[7:0] d;
output wire[18:0] addr;
output wire[8:0] dout;
output wire we;

reg [15:0] d_latch = 16'd0;
reg [18:0] address = 19'd0;
reg unsigned [18:0] address_next = 19'd0;
reg [1:0] wr_hold = 2'b00;
reg [8:0] dout_temp;
reg we_temp;


assign addr = address;
assign dout = dout_temp;
assign we = we_temp;


always @(posedge pclk)                //registro per address
begin
	address <= (vsync==1'b1)? 19'd0 : address_next;
end


always @(posedge pclk)               //registro per address_next
begin
	if (vsync==1'b1) address_next <= 19'd0;
	else if (wr_hold[1]==1'b1) address_next <= address_next + 1'b1;
end


always @(posedge pclk)               //registro per wr_hold
begin
	wr_hold <= (vsync==1'b1)? 2'b00 : {wr_hold[0], (href && !wr_hold[0])};
end

always @(posedge pclk)               //registro per we_temp
begin
	if (vsync==1'b0) we_temp <= wr_hold[1];
end

always @(posedge pclk)               //registro per dout_temp
begin
	if (vsync==1'b0)	dout_temp <= {d_latch[15:13],d_latch[10:8],d_latch[4:2]}; /*{d_latch[7:4],d_latch[11:8],d_latch[3:0]};*/
end

always @(posedge pclk)               //registro per d_latch
begin
	if (vsync==1'b0) d_latch <= {d_latch [7:0], d};
end





endmodule 