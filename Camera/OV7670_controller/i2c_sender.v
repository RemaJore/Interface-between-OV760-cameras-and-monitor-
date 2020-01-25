
module i2c_sender(clk, 
		  siod, 
		  sioc, 
		  taken, 
		  send, 
		  id, 
		  rega, 
		  value, 
		  clr
		  );
	
	 input wire clr;
         input wire clk;
	 inout wire siod;
	 output wire sioc;
	 output wire taken;
	 input wire send;
	 input wire [7:0] id, rega, value;
    reg unsigned [7:0] divider = 8'b00000001;
    reg [31:0] busy_sr = {32{1'b0}};
    reg [31:0] data_sr = {32{1'b1}};
    reg sioc_temp;
    reg taken_temp;
    reg siod_temp;
    
    assign siod = siod_temp;
    assign sioc = sioc_temp;
    assign taken = taken_temp;
	 
	 
	always@(busy_sr, data_sr[31])   //siod I2C register
	 begin
		siod_temp<=(busy_sr[11:10] == 2'b10 || busy_sr[20:19] == 2'b10 || busy_sr[29:28] == 2'b10)?1'bz : data_sr[31];
	  end
	 
	 
	always@(posedge clk)            //taken(advance) register
	 begin
		if(clr==1'b1)
			taken_temp<=1'b0;
		else taken_temp <= (divider == 8'b00000000 && send==1'b1 && busy_sr[31]==1'b0)? 1'b1 : 1'b0;
	  end
		
		
	always@(posedge clk)            //sioc I2C register
	 begin
		if(clr==1'b1)
			sioc_temp <= 1'b0;
		else if (busy_sr[31] == 1'b0)
			sioc_temp <= 1'b1;
		else case({busy_sr[31:29],busy_sr[2:0]})
		6'b111_111 : sioc_temp <= 1'b1;
		6'b111_110 : sioc_temp <= 1'b1;
		6'b111_100 : sioc_temp <= 1'b0;
		6'b110_000 : sioc_temp <= (divider[7:6] == 2'b00)? 1'b0 : 1'b1;     //?1'b1 : 1'b0;
		6'b100_000 : sioc_temp <= 1'b1;
		6'b000_000 : sioc_temp <= 1'b1;
		default : sioc_temp <= (divider[7:6]==2'b01 || divider[7:6]==2'b10);
		endcase
	 end
	 
	 
	always@(posedge clk)            //data signal register
	 begin
	 if(clr==1'b1)
		data_sr<=32'hFFFFFFFF;
		else if(divider==8'hFF)
		begin
			case (busy_sr[31])
			1'b0 : if(send==1'b1) data_sr <= {3'b100,id,1'b0,rega,1'b0,value,1'b0,2'b01};
				1'b1 : data_sr <= {data_sr[30:0],1'b1};            //one shift every divider cycle   
			endcase
		end
	 end
		
		
	always@(posedge clk)   		//busy_sr register
	 begin
	 if(clr==1'b1)
		busy_sr<=32'd0;
		else if(divider==8'hFF)
		begin
			case(busy_sr[31])
			1'b0 : if (send==1'b1) busy_sr <= {3'b111,9'b111111111,9'b111111111,9'b111111111,2'b11};
			1'b1 : busy_sr <= {busy_sr[30:0],1'b0};           //one shift every divider cycle 
			endcase
		end
	 end
		
		
	 always@(posedge clk)
	 begin
		if(clr==1'b1)
			divider<=8'b0000_0001;
		 //clock divider, changes every 256 clock positive edges
		else divider <= (busy_sr[31]==1'b0 && divider==8'h00 && send==1'b0)? divider : divider + 1'b1;
		end																														  /
	 
	
		
		
endmodule	
