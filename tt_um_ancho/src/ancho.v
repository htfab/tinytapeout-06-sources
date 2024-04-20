`timescale 1ns / 1ps

module ancho(
  input   clock,
    input   [2:0] speed,
    input   enable,    
    output  PWM
    );
    reg [4:0] counter;
    reg [4:0] width;
    reg temp_PWM;

    always @ (posedge clock or posedge enable) begin
        if (enable) begin
            counter <= 0;
            temp_PWM <= 0;
        end 
        else
         begin
            if (enable)
                counter <= 0;
            else
                counter <= counter + 1;
            
            if (counter < width)
                temp_PWM <= 1;
            else
                temp_PWM <= 0;
        end
    end

    always @ (*) begin
        case (speed)
            3'd0 : width = 5'd0;
            3'd1 : width = 5'd4; // 25% duty case
            3'd2 : width = 5'd8; // 50% de ciclo de util
            3'd3 : width = 5'd12; // 75% de ciclo util
            3'd4 : width = 5'd16; // 75% de ciclo util
            3'd5 : width = 5'd20;
            3'd6 : width = 5'd24;
            3'd7 : width = 5'd28;
            3'd8 : width = 5'd32;
            default : width = 5'd0;
        endcase
    end

    assign PWM = temp_PWM;
endmodule

