
module top_module(
				clr,
				clk27,
				pclk,
				vsync,
				href,
				data,
				clk50,
				resend_registers,
				vga_hsync,
				vga_vsync,
				data_out,
				config_finished,
				sioc,
				siod,
				pwdn,
				xclk,
				reset,
				data_enable
				  );

input wire clr;
input wire clk27;
input wire clk50;
input wire pclk;
input wire vsync;
input wire href;
input wire [7:0] data;

input wire resend_registers;


output wire vga_hsync;
output wire vga_vsync;
output wire [8:0] data_out;
output wire config_finished;
output wire sioc;
inout wire siod;
output wire pwdn;
output wire xclk;
output wire reset;
output wire data_enable;

wire resend;



VGA_controller vctr(.clr(clr),.clk27(clk27),.pclk(pclk),.vsync(vsync),.href(href),.data(data),.vga_hsync(vga_hsync),.vga_vsync(vga_vsync),.data_out(data_out),.data_enable(data_enable));//,.frame_address(frame_address)
OV7670_controller ovctr(.clr(clr),.clk(clk50),.resend(resend),.config_finished(config_finished),.sioc(sioc),.siod(siod),.pwdn(pwdn),.xclk(xclk),.reset(reset));
OV7670_reset rst(.clk(clk50),.in(resend_registers),.out(resend));
endmodule 