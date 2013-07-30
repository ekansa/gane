--- TAVO (Derived) Data ----

The data in this folder are derived from the index of the Tübingen Atlas of the Near and Middle East (TAVO). The data are shared in GitHub to enable future researchers to make use of structured data derived from the TAVO index, especially to help build digital gazetteers.

Creation of this dataset was made possible through the generous funding of the National Endowment for the Humanities under a Digital Humanities Startup Grant (HD-51425-11). We thank the Internet Archive for digitizing the TAVO index (http://archive.org/details/tbingeratlasdesv01siew http://archive.org/details/tbingeratlasdesv02siew and http://archive.org/details/tbingeratlasdesv03siew)


--- ORGANIZATION AND SCHEMA ----
We organized the TAVO derived data into a relational database schema. The queries to create the appropriate tables are in the "schemas" directory.

The key "entryGroupID" contains identifiers for blocks of text interpreted (through scrapping / parsing of the raw OCR results) to represent a given entry in the TAVO index. You can use "entryGroupID" to join toponymns (the "gane_toponymns" table), geo-coordinates (the "gane_geo" table), language codes (the "gane_languages" table), maps (each TAVO map provides metadata on chronology, the "gane_maps" tabls), and feature-types (the "gane_features" table). 

The "lineID" keys contain identifiers for individual lines of text from the OCR results. One can use this to look up which volume of the TAVO index data was the source for a given record (see the "gane_lines" table). The "gane_lines" table occasionally has page numbers indicated (integers above zero). These are known page numbers in the TAVO index from which a given line of text was originally scrapped. Most line do not have known page numbers because pagination data was created manually.

The "gane_mapmetadata" and the "gane_periods" tables provide additional metadata that relate to and describe records in "gane_maps". Similarly, the "gane_langcodes" provides ISO language codes (where applicable) to further describe records in the "gane_languages" table.

The "gane_toponymns" table has place-names (toponymns). The raw (OCRed and parsed) strings of text interpreted (by scrapping) as toponymns are in the "rawOCR" field. Edited toponymn data is in the "editedToponymn" field. Please be advised, these are messy data needing extensive cleanup! Diacritic marks did not OCR accurately and need manual review.


--- DATA ---
The data records for the TAVO derived dataset are available as CSV files in the  "tavo-data" directory. The first line of each table contains the fieldnames.


--- LICENSE ---
Creative Commons Zero Public Domain Dedication (No copyright asserted)

http://creativecommons.org/publicdomain/zero/1.0/


--- LICENSE NOTE ---
The TAVO derived data describe factual data about toponymns, the languages of the toponymns, (rough) geographic coordinates, feature types, and chronological metadata (encoded in map identifiers). We "scrapped" the factual data from the digitized TAVO index. 

Please note: In order to prevent copyright violations, we carefully ensured that these data, while useful for developing digital gazetteers, lack sufficient detail to enable reconstruction of the original expression of the TAVO index.  

