library(tidyverse)
library(googlesheets4)

sites <- read_sheet("https://docs.google.com/spreadsheets/d/1fq2owxMBLBwwibcdw2uQQFxnIhsMbaH4Qcj_xUwVvSQ/edit?usp=sharing", 2) %>% # nolint
  separate_rows(site_raw, sep = ",")

path <- "../inventories/data/raw_data"
files <- list.files(path, full.names = TRUE, pattern = "harmonized_data")

read_harmonized <- function(file) {
  cols <- c(
    ScientificName = NA_character_,
    VernName = NA_character_,
    Family = NA_character_,
    Genus = NA_character_,
    Species = NA_character_
  )
  read_csv(file,
    locale = readr::locale(encoding = "latin1"),
    col_types = cols()
  ) %>%
    add_column(!!!cols[!names(cols) %in% names(.)]) %>%
    mutate(raw_taxonomy = paste(
      ScientificName, "-", VernName, "-",
      Family, Genus, Species
    )) %>%
    mutate(file = gsub("../inventories/data/raw_data/", "", file))
}

extract_taxo <- function(file) {
  read_harmonized(file) %>%
    select(any_of(c(
      "Site", "ScientificName", "VernName",
      "Family", "Genus", "Species", "raw_taxonomy", "file"
    ))) %>%
    unique() %>%
    mutate_all(as.character) %>%
    rename(site_raw = Site) %>%
    filter(!is.na(site_raw)) %>%
    left_join(sites, by = join_by(site_raw))
}

raw_taxo <- lapply(files, extract_taxo) %>%
  bind_rows()

# check that no site are missing
raw_taxo %>%
  filter(is.na(site)) %>%
  select(site_raw, site, file) %>%
  unique()

raw_taxo %>%
  select(-site_raw, -file) %>%
  write_tsv("data/raw_data/raw_taxonomy_v5.tsv")
