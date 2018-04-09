#!/bin/bash
# https://stackoverflow.com/questions/41888723/easily-renaming-multiple-tables-in-bigquery-is-it-possible

# sh copying_gcloud-databases-tables.sh gtex-awg-im:GTEx_V7_HapMap_2017_11_29 imlab-public:predictdb.GTEx_V7_HapMap_
# sh copying_gcloud-databases-tables.sh gtex-awg-im:GTEx_V7_all_HapMap_2017_11_29 imlab-public:predictdb.GTEx_V7_all_HapMap_
# sh copying_gcloud-databases-tables.sh gtex-awg-im:GTEx_V6p_New_HapMap_2017_11_29 imlab-public:predictdb.GTEx_V6p_New_HapMap_
# sh copying_gcloud-databases-tables.sh gtex-awg-im:GTEx_V6p_HapMap_2016_09_08 imlab-public:predictdb.GTEx_V6p_HapMap_
# sh copying_gcloud-databases-tables.sh gtex-awg-im:GTEx_V6p_1KG_2016_11_16 imlab-public:predictdb.GTEx_V6p_1KG_
# sh copying_gcloud-databases-tables.sh gtex-awg-im:DGN_HapMap_2015 imlab-public:predictdb.DGN_HapMap_
# sh copying_gcloud-databases-tables.sh gtex-awg-im:genarch imlab-public:genarch.
# sh copying_gcloud-databases-tables.sh gene2pheno:ukb_neale_gene2pheno.ukb_neale_gene2pheno imlab-public:gene2pheno.ukb_neale

# bp cp gene2pheno:ukb_neale_gene2pheno.ukb_neale_gene2pheno imlab-public:gene2pheno.ukb_neale