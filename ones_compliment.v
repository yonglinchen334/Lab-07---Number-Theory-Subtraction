module ones_compliment (
    input [3:0] A, // Four bits of A: 3, 2, 1, 0
    input [3:0] B,
    output [3:0] Y
);
    wire [3:0] AplusB;
    wire around;
    wire [2:0] carry1;
    wire [2:0] carry2;

    // Regular addition x4 (one for each bit)
    full_adder b1 (
        .A(A[0]),
        .B(B[0]), 
        .Y(AplusB[0]), // Add first bits together
        .Cin(1'b0),
        .Cout(carry1[0]) // First bit carry 
    );
    
    
    full_adder b2 (
        .A(A[1]),
        .B(B[1]), 
        .Y(AplusB[1]), // Add second bits together
        .Cin(carry1[0]),
        .Cout(carry1[1]) // Second bit carry 
    );
    
    full_adder b3 (
        .A(A[2]),
        .B(B[2]), 
        .Y(AplusB[2]), // Add third bit together
        .Cin(carry1[1]),
        .Cout(carry1[2]) // Third bit carry 
    );
    
    full_adder b4 (
        .A(A[3]),
        .B(B[3]), 
        .Y(AplusB[3]), // Add third bit together
        .Cin(carry1[2]),
        .Cout(around) // Ignore last carry -> use for carry around
    );
    
    // Carry around one's compliment 
    full_adder CA0 (
         .A(AplusB[0]), // A + B results from each bit 
        .B(1'b0), 
        .Y(Y[0]), 
        .Cin(around), // Carry around bit 
        .Cout(carry2[0]) 
    );
    
    full_adder CA1 (
         .A(AplusB[1]), // A + B results from each bit 
        .B(1'b0), 
        .Y(Y[1]), 
        .Cin(carry2[0]), 
        .Cout(carry2[1]) 
    );
    
    full_adder CA2 (
         .A(AplusB[2]), // A + B results from each bit 
        .B(1'b0), 
        .Y(Y[2]), 
        .Cin(carry2[1]), 
        .Cout(carry2[2]) 
    );

    full_adder CA3 (
         .A(AplusB[3]), // A + B results from each bit 
        .B(1'b0), 
        .Y(Y[3]), 
        .Cin(carry2[2])
        // Ignore last carry out -- No carry 
    );

endmodule