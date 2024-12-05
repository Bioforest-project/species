# load packages
library(tidyverse)

# define were the raw inventories data are
path <- "../inventories/data/raw_data/all_output_files/"

# check available inventories
files <- list.files(path, full.names = TRUE, pattern = ".csv")
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
  mutate_all(as.character)
# in case a column is badly read

# make it a function
extract_taxo <- function(file) {
  read_csv(file, locale = readr::locale(encoding = "latin1")) %>%
    select(any_of(c(
      "Site", "ScientificName", "VernName",
      "Family", "Genus", "Species"
    ))) %>%
    unique() %>%
    mutate_all(as.character)
}

# test
extract_taxo(files[1])

# apply
raw_taxo <- lapply(files, extract_taxo) %>%
  bind_rows()

# save
write_tsv(raw_taxo, "data/raw_data/raw_taxonomy_v1.tsv")
