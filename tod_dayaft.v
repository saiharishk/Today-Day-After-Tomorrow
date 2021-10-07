module tod_dayaft (err,DayAft,today);

input [4:0] today;
output [4:0] DayAft;
output err;

wire [4:0] Date,Answer;
wire eq, inp1,inp2;

`ifdef STRUCT
add5 ADD1 (Date,today,5'd2);
comp8 C0 (eq30,{3'd0,today},8'd30);
comp8 C1 (eq31,{3'd0,Date},8'd31);
mux5 M0 (Answer,eq30,5'd1,Date);
mux5 M1 (DayAft,eq31,5'd1,Answer);

comp8 C2 (inp1,8'd0,{3'd0,today});
comp8 C3 (inp2,8'd31,{3'd0,today});
`endif

`ifdef DF

assign Date=today+5'd2;
assign eq30 = {3'd0,today}==8'd30;
assign eq31 = {3'd0,Date}==8'd31;
assign Answer=eq30?5'd2:Date;
assign DayAft=eq31?5'd1:Answer;
assign inp1 = 8'd0=={3'd0,today};
assign inp2 = 8'd31=={3'd0,today};

`endif
or (err,inp1,inp2);
endmodule
