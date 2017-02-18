Data grades;
	input name $ 1-15 e1 e2 e3 e4 p1 f1;
	if p1 in (98, 99, 100) then project = 'Excellent';
	DATALINES;
Alexander Smith  78 82 86 69  97 80
John Simon       88 72 86  . 100 85
Patricia Jones   98 92 92 99  99 93
Jack Benedict    54 63 71 49  82 69
Rene Porter     100 62 88 74  98 92
;
RUN;

PROC PRINT data= grades;
	var name p1 project;
RUN;
