/************************************************
Filename: V:\STAT480\HW3\HW3.sas
Written by: Xianling Zhang
Date: Feb 5th, 2017
This program reads in a set of dataset for varaibles including
town name, number, month, year, low temperature, and high temperature, and save it
to a permanent dataset. And then output it.

Input: the data I have included below by hardcoding
Output: 1. a perminant SAS datafiles. 2.a chart town name, number, month, year, 
low temperature, and high temperature
************************************************/

LIBNAME stat480 'V:\Desktop\STAT480\HW3\data\';
OPTIONS LS=80 CENTER ;* set the lineszie to no more than 80 characters;

DATA stat480.townInfo; *create permanent dataset;
	Input y_Name $ t_number t_month t_year t_low t_high;*list input;
DATALINES;
Kane   20  12  2005  12  25
Ambler 22  12  2005   8  20
Kane   20  01  2006  13  32
Oakey  32  12  2005  30  50
Oakey  32  01  2006  25  45
Ambler 22  01  2006  15  28
;
RUN;

PROC PRINT data=stat480.townInfo;
	title 'The Town Information';
RUN;
