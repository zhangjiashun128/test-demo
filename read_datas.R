library(tidyverse)
library(readxl)
files <- fs::dir_ls("data", recurse = TRUE, glob = "*.xlsx")
files
df <- map_dfr(files, read_xlsx)
head(df)
