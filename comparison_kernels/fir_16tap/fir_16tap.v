module fir_16tap(
        input Clk,
        input signed [7:0] Xin,
        output reg signed [15:0] Yout
        );
    
    //Internal variables.
    wire signed   [7:0] H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15;
    wire signed   [15:0] MCM0,MCM1,MCM2,MCM3,MCM4,MCM5,MCM6,MCM7,MCM8,MCM9,MCM10,MCM11,MCM12,MCM13,MCM14,add_out1,add_out2,add_out3,add_out4,add_out5,add_out6,add_out7,add_out8,add_out9,add_out10,add_out11,add_out12,add_out13,add_out14,add_out15;
    wire signed     [15:0] Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;
    
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
    assign H8 = 1;
    assign H9 = 1;
    assign H10 = 1;
    assign H11 = 1;
    assign H12 = 1;
    assign H13 = 1;
    assign H14 = 1;
    assign H15 = 1;

//Multiple constant multiplications.
    assign MCM14 = H14*Xin;
    assign MCM13 = H13*Xin;
    assign MCM12 = H12*Xin;
    assign MCM11 = H11*Xin;
    assign MCM10 = H10*Xin;
    assign MCM9 = H9*Xin;
    assign MCM8 = H8*Xin;
    assign MCM7 = H7*Xin;
    assign MCM6 = H6*Xin;
    assign MCM5 = H5*Xin;
    assign MCM4 = H4*Xin;
    assign MCM3 = H3*Xin;
    assign MCM2 = H2*Xin;
    assign MCM1 = H1*Xin;
    assign MCM0 = H0*Xin;

//adders
    assign add_out1 = Q1 + MCM14;
    assign add_out2 = Q2 + MCM13;
    assign add_out3 = Q3 + MCM12;    
    assign add_out4 = Q4 + MCM11;
    assign add_out5 = Q5 + MCM10;
    assign add_out6 = Q6 + MCM9;
    assign add_out7 = Q7 + MCM8;
    assign add_out8 = Q8 + MCM7;
    assign add_out9 = Q9 + MCM6;
    assign add_out10 = Q10 + MCM5;
    assign add_out11 = Q11 + MCM4;
    assign add_out12 = Q12 + MCM3;
    assign add_out13 = Q13 + MCM2;
    assign add_out14 = Q14 + MCM1;
    assign add_out15 = Q15 + MCM0;

//flipflop instantiations (for introducing a delay).
    DFF dff1 (.Clk(Clk),.D(MCM14),.Q(Q1));
    DFF dff2 (.Clk(Clk),.D(add_out1),.Q(Q2));
    DFF dff3 (.Clk(Clk),.D(add_out2),.Q(Q3));
    DFF dff4 (.Clk(Clk),.D(add_out3),.Q(Q4));
    DFF dff5 (.Clk(Clk),.D(add_out4),.Q(Q5));
    DFF dff6 (.Clk(Clk),.D(add_out5),.Q(Q6));
    DFF dff7 (.Clk(Clk),.D(add_out6),.Q(Q7));
    DFF dff8 (.Clk(Clk),.D(add_out7),.Q(Q8));
    DFF dff9 (.Clk(Clk),.D(add_out8),.Q(Q9));
    DFF dff10 (.Clk(Clk),.D(add_out9),.Q(Q10));
    DFF dff11 (.Clk(Clk),.D(add_out10),.Q(Q11));
    DFF dff12 (.Clk(Clk),.D(add_out11),.Q(Q12));
    DFF dff13 (.Clk(Clk),.D(add_out12),.Q(Q13));
    DFF dff14 (.Clk(Clk),.D(add_out13),.Q(Q14));
    DFF dff15 (.Clk(Clk),.D(add_out14),.Q(Q15));

//Assign the last adder output to final output.
    always@ (posedge Clk)
        Yout <= add_out15;

endmodule
