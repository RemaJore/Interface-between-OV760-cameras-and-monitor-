module gen_VGA_480p(reset,
		    clk27, 
		    hsync, 
		    vsync, 
		    href, 
		    data, 
		    frame_addr, 
		    frame_pixel
		   );

input wire reset;
input wire clk27;
output wire hsync;
output wire vsync;
output reg href;
output reg [8:0] data;
output reg [18:0] frame_addr;
input wire [8:0] frame_pixel;

//{h_disp, h_fporch, h_sync, h_bporch} <= {12'd720, 12'd16, 12'd62, 12'd60}; // total: 858
//{v_disp, v_fporch, v_sync, v_bporch} <= {12'd480, 12'd9, 12'd6,  12'd30};  // total: 525

/*
Horizonal Timing
A (us) Scanline 
B (us) Sync pulse
C (us) Back porchch
D (us) Active video
E (us) Front porcch
E+B+C = blanking

         ______________________          _________
________|        VIDEO         |________| VIDEO (next line)
    |-C-|----------D-----------|-E-|
	  60           720           16
	 
	 
__   _______________________________   ___________
  |_|                               |_|
  |B|
  |---------------A-----------------|
  62                 
  

Vertical Timing
O (ms) Total frame  
P (ms) Sync length
Q (ms) Back porch
R (ms) Active video
S (ms) Front porch

         ______________________          ________
________|        VIDEO         |________| VIDEO (next frame)
    |-Q-|----------R-----------|-S-|
	  30           480            9
	 
__   ______________________________   ___________
  |_|                              |_|
  |P|
  |---------------O----------------|
   6
*/



reg [11:0] hcounter;
reg [11:0] vcounter;



always @(posedge clk27)
 begin
 if(reset)
  frame_addr <= 19'd0;
  else if((vcounter <12'd36)||(vcounter >12'd515))
	 frame_addr <= 19'd0;
  else if (href) 
   frame_addr <= frame_addr + 1'b1;
	else frame_addr <= frame_addr; 
 end

 
always @(posedge clk27)
 begin
 if(reset) data<= 9'd0;
 else if(href)
	 data <= frame_pixel; 
	 else
	  data <= 9'd0;
 end

 
always @(posedge clk27)
 begin
  if(reset) hcounter <= 12'd0;
  else 
  if(hcounter == 12'd857)
    hcounter <= 12'd0;
	else hcounter <= hcounter + 1'b1;
 end

 
always @(posedge clk27)
 begin
  if(reset) vcounter <= 12'd0;
  else 
  if(hcounter == 12'd857 && vcounter == 12'd524)
    vcounter <= 12'd0;
	else 
	 if(hcounter == 12'd857)
    vcounter <= vcounter + 1'b1;
	 
 end


always @(posedge clk27)
 begin
  if(reset) href <= 1'b0;
  else 
  if((vcounter < 12'd36)||(vcounter > 12'd515))
   href <= 1'b0;
    else
     href <= (hcounter > 12'd121 && hcounter < 12'd762);

 end

 




assign hsync = (!(hcounter < 12'd62));     

assign vsync = (!(vcounter < 12'd6));  




endmodule  
