# Outputs
Dec 5, 2024

All outputs of the analyses:

- **taxonomy_v\***: all cleaned taxonomic data with:
  - site: the site name
  - scientific\_\*: all columns with the scientific name
  - vernacular\_\*: all columns with the vernacular name
  - family\_\*: all columns with the family name
  - genus\_\*: all columns with the genus name
  - species\_\*: all columns with the species name
  - \*\_raw: all columns with the raw information as read in the
    inventories, see analyses
  - \*\_corrected: all columns with the manual corrections of dubious
    names, see analyses
  - \*\_cleaned: all columns with the synonymy and misspelling
    corrections with WFO and manual corrections, see analyses, this is
    the final taxonomic classification that should be used in further
    analyses
  - \*\_reason: the reason for manual corrections of dubious names, see
    analyses
  - cleaning_type: WFO automatic cleaning or using manual curation
  - cleaning_comment: the reason for manual curation
- **phylogeny_v\***: the full phylogeny in parenthetic format using the
  Newick (also known as New Hampshire) format.
- **traits_v\***: all gathered trait data with
  - scientific_cleaned: the cleaned scientific name for junction with
    the taxonomic data
  - trait: the trait acronym or code
  - trait_value_raw: the trait raw value
  - trait_value_imputed: the trait imputed value in case of missing raw
    value
  - definition: the trait definition
  - unit: the trait unit

``` r
fs::dir_tree()
```

    .
    ├── README.md
    ├── README.qmd
    ├── README.rmarkdown
    ├── phylogeny_v2.tree
    ├── taxonomy_v2.tsv
    └── traits_v2.tsv
