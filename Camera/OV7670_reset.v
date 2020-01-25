module OV7670_reset(input clk, input in, output out); 
        reg unsigned [23:0] c;
        reg out_temp;
        
        always @(posedge clk)begin
            if(in == 1)begin
                if(c==24'hFFFFFF)begin
                    out_temp <= 1'b1;           
                end
                else begin
                    out_temp <= 1'b0;
                end
                c <= c+1'b1;
            end
            else begin
                c <= {24{1'b0}};
                out_temp <= 1'b0; 
            end
        end
        assign out = out_temp;
endmodule 