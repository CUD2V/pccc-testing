# Testing and Benchmarking of the pccc R Package

This repository provides scripts for testing and benchmarking the
[pccc](https://github.com/dewittpe/pccc) R package. 

The three subdirectories contain scripts for testing and benchmarking
the `pccc` package based on the the published results and datasets used in 
["Pediatric complex chronic conditions classification system version
2: updated for ICD-10 and complex medical technology dependence and
transplantation" by Chris Feudtner, James A Feinstein, Wenjun Zhong, Matt Hall
and Dingwei Dai](http://bmcpediatr.biomedcentral.com/articles/10.1186/1471-2431-14-199).

Because of data use agreements, only some of the tests and benchmarks will be publicly reproducible. 

## 001 SimulatedData

This directory contains testing scripts and a dataset with information about XXXX simulated patients. Each patient 
has one row in the dataset that contains a subject identifier and ICD-9-CM and ICD-10 diagnosis and
procedure codes. 

The testing and benchmarking in this directory is publicly reproducible.

## 002 KID
The 2009 Kid's Inpatient Database (KID)

Due to data use agreements, these data are not available in this repository but
can be obtained from the Agency for Healthcare Research and Quality:

http://www.hcup-us.ahrq.gov/databases.jsp


## 003 NEDS
The 2010 Nationwide Emergency Department Sample (NEDS) dataset

Due to data use agreements, these data are not available in this repository but
can be obtained from the Agency for Healthcare Research and Quality:

http://www.hcup-us.ahrq.gov/databases.jsp
