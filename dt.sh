#!/bin/bash
logdir=.
fname=$logdir/$1_$(date +%d_%m_%y.%H_%M_%S).log
echo $fname
date >> $fname
echo =================================================================================================================== >> $fname
echo $@ >> $fname
{ time $@ >> $fname; }  2>> $fname
echo =================================================================================================================== >> $fname
#use line below to print file contents
#cat $fname
