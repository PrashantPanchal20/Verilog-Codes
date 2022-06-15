module jk_ff_edge_trigger(Q,Qn,C,J,K,RESETn);
output Q;
output Qn;
input C;
input J;
input K;
input RESETn;

wire Kn;
wire D;
wire D1;
wire Cn;
wire Cnn;
wire DQ;
wire DQn;

assign D1 = !RESETn ? 0 : D;

not (Kn,K);
and (J1,J,Qn);
and (K1, Kn, Q);
or (D,J1, K1);
not (Cn,C);
not (Cnn,Cn);
d_latch dl(DQ,DQn,Cn,D1);
sr_latch_gated sr(Q,Qn,Cnn,DQ,DQn);

endmodule

module d_latch(Q,Qn,G,D);
output Q;
output Qn;
input G;
input D;

wire Dn;
wire D1;
wire Dn1;

not (Dn,D);
and (D1,G,D);
and (Dn1,G,Dn);
nor (Qn, D1,Q);
nor (Q,Dn1,Qn);
endmodule

module sr_latch_gated(Q,Qn,G,S,R);

output Q;
output Qn;
input G;
input S;
input R ;
wire S1;
wire R1;

and (S1,G,S);
and (R1,G,R);
nor (Qn,S1,Q);
nor (Q,R1,Qn);

endmodule