module fir_8tap(
        input Clk,
        input signed [7:0] Xin,
        output reg signed [15:0] Yout
        );
    
    //Internal variables.
    wire signed   [7:0] H0,H1,H2,H3,H4,H5,H6,H7;
    wire signed   [15:0] MCM0,MCM1,MCM2,MCM3,MCM4,MCM5,MCM6,MCM7,add_out1,add_out2,add_out3,add_out4,add_out5,add_out6,add_out7;
    wire signed     [15:0] Q1,Q2,Q3,Q4,Q5,Q6,Q7;
    
//filter coefficient initializations.
//H = [-2 -1 3 4].
    assign H0 = -2;
    assign H1 = -1;
    assign H2 = 3;
    assign H3 = 4;
    assign H4 = 1;
    assign H5 = 1;
    assign H6 = 1;
    assign H7 = 1;

//Multiple constant multiplications.
    assign MCM7 = H7*Xin;
    assign MCM6 = H6*Xin;
    assign MCM5 = H5*Xin;
    assign MCM4 = H4*Xin;
    assign MCM3 = H3*Xin;
    assign MCM2 = H2*Xin;
    assign MCM1 = H1*Xin;
    assign MCM0 = H0*Xin;

//adders
    assign add_out1 = Q1 + MCM6;
    assign add_out2 = Q2 + MCM5;
    assign add_out3 = Q3 + MCM4;    
    assign add_out4 = Q4 + MCM3;
    assign add_out5 = Q5 + MCM2;
    assign add_out6 = Q6 + MCM1;
    assign add_out7 = Q7 + MCM0;

//flipflop instantiations (for introducing a delay).
    DFF dff1 (.Clk(Clk),.D(MCM7),.Q(Q1));
    DFF dff2 (.Clk(Clk),.D(add_out1),.Q(Q2));
    DFF dff3 (.Clk(Clk),.D(add_out2),.Q(Q3));
    DFF dff4 (.Clk(Clk),.D(add_out3),.Q(Q4));
    DFF dff5 (.Clk(Clk),.D(add_out4),.Q(Q5));
    DFF dff6 (.Clk(Clk),.D(add_out5),.Q(Q6));
    DFF dff7 (.Clk(Clk),.D(add_out6),.Q(Q7));

//Assign the last adder output to final output.
    always@ (posedge Clk)
        Yout <= add_out7;

endmodule
