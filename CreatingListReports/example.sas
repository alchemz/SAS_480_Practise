/************************************************
Filename:V:\Desktop\STAT480\HW6\Q1.sas
Written by: Xianling Zhang
Date: Feb 25th, 2017

Goal: Prince the exact table look provided by the instructor

Variables: a raw dataset with title, author, publisher, pubdate,
price, pages.

Input: the dataset kidsbook.txt

Output: 1.a temporary dataset 2.a chart with formatted variables

Process: 
1.set the line size to be 72 and page size to be 38
2.create the temp dataset kidsbook,locate the raw data at V:\Desktop\STAT480\HW6\data\kidsbooks.txt
3.input the data
4.Calculate the price per page
5.sort the dataset by descending price
6.suppress the table and make it double space
7.name the output table
8.label the variables with detailed description
9.format the data(date, dollar)
10.Emphasize the Title column
11.List the variables to be print, and Sum price
12.Only print out the unit price greater than 30 cents
13.make footnote1
************************************************/

OPTIONS LS = 72 PS = 38 NODATE;*set the line size to be 72 and page size to be 38;

DATA kidsbooks;
  infile 'V:\Desktop\STAT480\HW6\data\kidsbooks.txt'; *locate the raw data;
	input Title $ 1-20 Author $ 22-40 Publisher $ 43-58 
		  Pubdate mmddyy10. Price 72-76  Pages 79-80; *input the data;
	UnitPrice= Price/Pages; *Calculate the price per page;
RUN;

PROC SORT data= kidsbooks out=srtd_kids;
by descending Price; *sort the dataset by descending price;
RUN;

PROC PRINT data = srtd_kids SPLIT='/' NOOBS DOUBLE; *suppress the table and make it double space;
title 'Popular Books for Children'; *name the output table;
label Pages='No. of/Pages'
	  UnitPrice='Price/Per Page'
	  Pubdate='Publication/Date'; *label the variables with detailed description;
format PubDate date9.
		Price dollar9.2
		UnitPrice dollar9.2; *format the data;
id Title; *Emphasize the Title column;
var  Author Price Pages UnitPrice 
	Publisher PubDate;
sum Price; *Sum price;
where UnitPrice >0.3; *Only print out the unit price greater than 30 cents;
footnote1 'Price obtained from Amazon.com';*make footnote1;
RUN;
