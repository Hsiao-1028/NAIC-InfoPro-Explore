################################################################################
#                                                                              #
# TITLE:        Explore NAIC dataset                                           #
# AUTHOR:       Po-Kang Hsiao                                                  #
# PURPOSE:      explore NAIC InfoPro dataset in WSB                            #
# LAST MOD:     03.13.2026, Madison                                            #
#                                                                              #
################################################################################
#' Notes
################################################################################

rm(list = ls());gc()
library(data.table)
library(dplyr)

setwd('/Volumes/wsb/NAIC/NAIC 2019 Life Fraternal')
demo    <- fread('L2019000.csv')
asset   <- fread("L2019005.csv")
liab    <- fread("L2019007.csv")
oper    <- fread("L2019009.csv")

test <- fread("L2019179.csv")
expense <- fread("L2019044.csv")
