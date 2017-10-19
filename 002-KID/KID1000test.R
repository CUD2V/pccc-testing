library(readr)
library(pccc)
library(dplyr)

read_csv(file = "002-KID/KID_2009_Core_1000.csv")

kid1000_sub <- kid1000 %>% select(RECNUM,
                                  starts_with("DX"),
                                  starts_with("PR"))

df9 <- ccc(kid1000, 
    id = RECNUM,
    dx_cols = dplyr::vars(dplyr::starts_with("DX")),
    pc_cols = dplyr::vars(dplyr::starts_with("PR")),
    icdv = 9)