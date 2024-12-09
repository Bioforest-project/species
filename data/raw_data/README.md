# Raw data
Sylvain Schmitt -
Dec 6, 2024

This folder will contains the raw data for all anlayses. In particular:

- **36779_25102024131149/**: try request result v1
- **37729/**: try request result v2
- **get_tallo.sh,** **get_try.sh**, **get_wfo.sh**: bash scripts to
  retrieve tallo, try, and wfo raw data
- **extract_raw_data.R**: R script to extract raw taxonomic information
- **WFO_Backbone.zip**: wfo raw information
- **Tallo.csv?download=1**: tallo raw information
- **TryAccSpecies.txt**: try raw information
- **raw_taxonomy_v1.tsv**: taxonomy raw information

``` r
fs::dir_tree()
```

    .
    ├── 36779_25102024131149
    │   ├── 36779.txt
    │   ├── TRY_6.0_Data_Release_Notes.pdf
    │   └── TRY_Intellectual_Property_Guidelines.pdf
    ├── 37729
    │   ├── 37729.txt
    │   ├── TRY_6.0_Data_Release_Notes.pdf
    │   └── TRY_Intellectual_Property_Guidelines.pdf
    ├── README.md
    ├── README.qmd
    ├── README.rmarkdown
    ├── Tallo.csv?download=1
    ├── TryAccSpecies.txt
    ├── WFO_Backbone.zip
    ├── extract_raw_data.R
    ├── get_tallo.sh
    ├── get_try.sh
    ├── get_wfo.sh
    └── raw_taxonomy_v1.tsv
