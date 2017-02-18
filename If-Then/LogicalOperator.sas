* and or not
Data grades;
	length overall $ 10;
	input name $ 1-15 e1 e2 e3 e4 p1 f1;
	avg= round((e1+e2+e3+e4)/4, 0.1);
	if (avg=.) 						then overall ='Incomplete';
	else if(avg >=90) 				then overall ='A';
	else if(avg >=80) and (avg<90)	then overall ='B';
	else if(avg >=70) and (avg<80)	then overall ='C';
	else if(avg >=65) and (avg<70)	then overall ='D';
	else if(avg <65)				then overall ='F';
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

