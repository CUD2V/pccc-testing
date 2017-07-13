# Testing and benchmarking the `pccc` package processing the 2010 NEDS

The batch shell script below (.bat) was written for a Windows operating system 
and will not run on a Unix-based operating system (OS X or Linux). Users interested
in running the script on a Unix-based OS could adapt the .bat file to a Linux shell
script (.sh).

* `pccc-testing.R` -- This R script will be called by the `ned.bat` script
* `neds.bat`       -- either double click on this file or evaluate from
                      `cmd.exe`.
* `neds-summary.R` -- This script reads in the results in the `*.rds` files and
                      gernates simple summary statistics.

The design of the NED test is to use 20 cores to evaluate about 5% of the rows
each.


