/************************************************
Filename: V:\STAT480\HW4\HW4_2.sas
Written by: Xianling Zhang
Date: Feb 10th, 2017
This program reads in a set of dataset for varaibles including
town name, number, month, year, low temperature, and high temperature, and save it
to a permanent dataset. And then output it.

Input: the data I have included below by hardcoding
Output: 1. a perminant SAS datafiles. 2.a chart town name, number, month, year, 
low temperature, and high temperature
************************************************/

OPTIONS PS=58 LS=90;

DATA temp;
	INPUT abc def ghi jkl;
	one = abc+ def- ghi + jkl;
	two= ghi+jkl-(abc+def);
	three=abc+jkl+(def- ghi);
	four = abc+jkl+(def/ghi);
	five= abc+def/sum(ghi,jkl);
	DATALINES;
	10 5 2 4
	;
						
RUN;

PROC PRINT data=temp;
	var one two three four five ;
RUN;
