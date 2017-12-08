# Preferable method for running this script
#
# 1. open cmd.exe
# 2. navigate to directory with this file
# 3. "C:\Program Files\R\R-3.3.3\bin\R.exe" CMD BATCH --vanilla pccc-testing.R  ### change R version if needed
# 4. Review the pccc-testing.Rout file.


# pccc test using the KID 2009 data
date()

library(readr)
library(dplyr)
library(tidyr)
library(pccc)

# read in the KID 2009 Data
# NOTE: This is the location of the KID on our testing machine. Change path to KID location on your system.
kid9cols <- read_csv("C:/HCUPData/KID/KID09_core_columns.csv")

# Load ASCII Core file
kid9core <- read_fwf("C:/HCUPData/KID/KID_2009_Core.ASC",
                     fwf_positions(
                       start = kid9cols$start,
                       end = kid9cols$end,
                       col_names = tolower(kid9cols$name)),
                     col_types = paste(rep("c", nrow(kid9cols)), collapse = ""))

table(kid9core$year)

# select id(recnum), dx(24-28), ecode(74-77) and proc(106-120) columns only
# kid9core <- kid9core[,c(2,24:48,74:77,106:120)]

dim(kid9core)
n_distinct(kid9core$recnum)

system.time({
  kid_ccc <-
    ccc(kid9core[, c(2, 24:48, 74:77, 106:120)],
        id      = recnum,
        dx_cols = vars(starts_with("dx"), starts_with("ecode")),
        pc_cols = vars(starts_with("pr")),
        icdv    = 09)
})

kid_ccc

dplyr::summarize_at(kid_ccc, vars(-recnum), sum) %>% print.data.frame
dplyr::summarize_at(kid_ccc, vars(-recnum), mean) %>% print.data.frame

print(sessionInfo(), locale = FALSE)
