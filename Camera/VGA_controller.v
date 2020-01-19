
module VGA_controller(clr,
					clk27,
					pclk,
					vsync,
					data,
					href,
					vga_hsync,
					vga_vsync,
					data_enable,
					data_out);

input wire clr;
input wire clk27;
input wire pclk;
input wire vsync;
input wire href;
input wire [7:0] data;
output wire vga_hsync;
output wire vga_vsync;
output data_enable;
output [8:0] data_out;


wire [18:0] rd_address;
wire [18:0] wr_address;
wire [8:0] dout_capture;
wire write_enable;
wire [8:0] dout_framebuffer;



OV7670_capture cap(.pclk(pclk),
				   .vsync(vsync),
				   .href(href),
				   .d(data),
				   .addr(wr_address),
				   .dout(dout_capture),
				   .we(write_enable)
				   );
				   

gen_VGA_480p gen_VGA_480p_inst(.reset(clr),
			           .clk27(clk27),
				   .data(data_out),
				   .frame_pixel(dout_framebuffer),
				   .frame_addr(rd_address),
				   .vsync(vga_vsync),
				   .hsync(vga_hsync),
			           .href(data_enable)
							   );
							   
							   
framebuffer2port frb2p(.data(dout_capture),
					   .rdaddress(rd_address),
					   .rdclock(clk27),
					   .wraddress(wr_address),
					   .wrclock(pclk),
					   .wren(write_enable),
					   .q(dout_framebuffer)
					   );
					   
					   
endmodule 
