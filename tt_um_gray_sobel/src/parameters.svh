`ifndef __CONSTANTS_SOBEL__
`define __CONSTANTS_SOBEL__

localparam MAX_PIXEL_BITS = 24;              
localparam PIXEL_WIDTH_OUT = 8;
localparam SOBEL_COUNTER_MAX_BITS = 3;                              //Counter for 3x3 matrix of pixels to convolve with kernel
localparam MAX_GRADIENT_WIDTH = $clog2((1 << PIXEL_WIDTH_OUT)*3);   //Max value of gradient could be a sum of three max values of 2^(PIXEL WIDTH) bits
localparam MAX_PIXEL_VAL = 1<< PIXEL_WIDTH_OUT;                     //Binarization max value
localparam MAX_GRADIENT_SUM_WIDTH = $clog2((1 << MAX_GRADIENT_WIDTH)*2);    
localparam MAX_RESOLUTION_BITS = 24;
localparam ZERO_PAD_WIDTH = MAX_PIXEL_BITS - PIXEL_WIDTH_OUT;

    typedef struct packed {
        logic signed [PIXEL_WIDTH_OUT-1:0] pix0;
        logic signed [PIXEL_WIDTH_OUT-1:0] pix1;
        logic signed [PIXEL_WIDTH_OUT-1:0] pix2;
    } sobel_vector;
    

    typedef struct packed {
        sobel_vector vector0;
        sobel_vector vector1;
        sobel_vector vector2;
    } sobel_matrix;

`endif
