
module OV7670_controller(clk, resend, config_finished, sioc, siod, reset, pwdn, xclk, clr);
//il controller gestisce tutti i pin di controllo della camera OV7670
    
    output wire config_finished;
	 output wire sioc;
	 wire [15:0] command;
	 wire taken;
	 wire finished;
	 wire advance;
	 wire [7:0] rega,value;
	 inout wire siod;
	 output wire pwdn;
	 output wire xclk;
	 output wire reset;
	 input wire clk;
	 input wire resend;
	 input wire clr;
    reg send;
    wire [7:0] camera_address = 8'h42;
    reg sys_clk = 0;
	 
    assign config_finished = ~finished;
    
    
    assign reset = 1;
    assign pwdn = 0;
    assign xclk = sys_clk;
    
    always@(finished)                          
        begin
            send <= ~finished;
        end
    always@(posedge clk)
        begin
            sys_clk <= ~sys_clk;     
        end
    
    OV7670_registers orv(.clk(clk),.advance(taken), .command(command), .finished(finished), .resend(resend));
    i2c_sender isv(.clk(clk), .taken(taken), .siod(siod), .sioc(sioc), .send(send), .id(camera_address), .rega(command[15:8]), .value(command[7:0]), .clr(clr));
endmodule 