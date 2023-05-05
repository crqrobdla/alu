module full_adder(

    input wire a, b, cin,
    output wire sum, cout
);

    wire w1, w2, w3;
    
    xor xor2(w1, a, b);
    xor xor3(sum, w1, cin);
    and and1(w2, w1, cin);
    and and2(w3, a, b);
    or or2(cout, w2, w3); 

endmodule