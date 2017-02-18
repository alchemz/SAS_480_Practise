DATA grades;
	input name $ 1-15 e1 e2 e3 e4 p1 f1;
	* if the first exam is less than 65 indicate failed;
	if (e1 < 65) then status = 'Failed';
	DATALINES;
Alexander Smith  78 82 86 69  97 80
John Simon       88 72 86  . 100 85
Patricia Jones   98 92 92 99  99 93
Jack Benedict    54 63 71 49  82 69
Rene Porter     100 62 88 74  98 92
;
RUN;

PROC PRINT data = grades;
	var name e1 status;
RUN;
