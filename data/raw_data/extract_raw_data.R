# load packages
library(tidyverse)
library(googlesheets4)

# site corrections
sites <- read_sheet("https://docs.google.com/spreadsheets/d/1fq2owxMBLBwwibcdw2uQQFxnIhsMbaH4Qcj_xUwVvSQ/edit?usp=sharing", 2) %>% #nolint
  separate_rows(site_raw, sep = ",")

# define were the raw inventories data are
path <- "../inventories/data/raw_data"

# check available inventories
files <- list.files(path, full.names = TRUE, pattern = "harmonized_data")
files

# explore taxonomy extraction
file <- files[1]
read_csv(file, locale = readr::locale(encoding = "latin1")) %>%
  select(any_of(c(
    "Site", "ScientificName", "VernName",
    "Family", "Genus", "Species"
  ))) %>%
  # in case a column doesn't exist but this should not be the case ?
  unique() %>%
  mutate_all(as.character) %>%
  # in case a column is badly read
  rename(site_raw = Site) %>%
  left_join(sites)

# make it a function
extract_taxo <- function(file) {
  read_csv(file, locale = readr::locale(encoding = "latin1")) %>%
    select(any_of(c(
      "Site", "ScientificName", "VernName",
      "Family", "Genus", "Species"
    ))) %>%
    unique() %>%
    mutate_all(as.character) %>%
    rename(site_raw = Site) %>%
    left_join(sites)
}

# test
extract_taxo(files[1])

# apply
raw_taxo <- lapply(files, extract_taxo) %>%
  bind_rows()

# check that no site are missing
raw_taxo %>%
  filter(is.na(site)) %>%
  select(site_raw, site) %>%
  unique()

# save
write_tsv(raw_taxo, "data/raw_data/raw_taxonomy_v3.tsv")
