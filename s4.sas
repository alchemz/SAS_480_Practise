/************************************************
Filename: V:\STAT480\HW4\HW4_1.sas
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

DATA dietData;
	infile 'V:\Desktop\STAT480\HW4\dietdata.dat';
	input Subj $ 1-3 Height $ 4-5 Wt_init 6-8 Wt_final 9-11;
	bmi_init=Wt_init/2.2;
	bmi_final= Wt_final/2.2;
 	bmi_diff= (bmi_init- bmi_final);
	Height_i= Height* 0.0254;
RUN;

PROC PRINT data=dietData;
	title 'Output';
	var Subj Height Wt_init Wt_final Height_i bmi_init bmi_final bmi_diff;*Output
RUN;
