module tb();

reg [4:0] today;
wire [4:0] DayAft;
wire err;

tod_dayaft TB (err,DayAft,today);

initial
	begin
		today=5'd1;#1;$display("today=%d, Day after tomorrow = %d, Error=%d",today,DayAft,err);
		today=5'd28;#1;$display("today=%d, Day after tomorrow = %d, Error=%d",today,DayAft,err);
		today=5'd31;#1;$display("today=%d, Day after tomorrow = %d, Error=%d",today,DayAft,err);
		today=5'd29;#1;$display("today=%d, Day after tomorrow = %d, Error=%d",today,DayAft,err);
		today=5'd30;#1;$display("today=%d, Day after tomorrow = %d, Error=%d",today,DayAft,err);
	end
	
endmodule
