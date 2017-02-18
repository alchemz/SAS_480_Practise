Data grades;
	length overall $ 10;
	input name $ 1-15 e1 e2 e3 e4 p1 f1;
	avg= round((e1+e2+e3+e4)/4, 0.1);
	if (avg EQ .) 						then overall ='Incomplete';
	else if(90 LE avg LE 100) 				then overall ='A';
	else if(80 LE avg LT 90) 	then overall ='B';
	else if(70 LE avg LT 80)	then overall ='C';
	else if(65 LE avg LT 70) 	then overall ='D';
	else if(0 LE avg LT 65)		then overall ='F';
	DATALINES;
Alexander Smith  78 82 86 69  97 80
John Simon       88 72 86  . 100 85
Patricia Jones   98 92 92 99  99 93
Jack Benedict    54 63 71 49  82 69
Rene Porter     100 62 88 74  98 92
;
RUN;

PROC PRINT data=grades;
	var name avg overall;
RUN;

