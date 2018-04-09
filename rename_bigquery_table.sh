#!/usr/bin/env bash
# SRC="<project-id>:<dataset>"

# https://stackoverflow.com/questions/41888723/easily-renaming-multiple-tables-in-bigquery-is-it-possible

SRC="imlab-public:gene2pheno"
bq ls --max_results=500 --format=csv $SRC | awk '{if(NR>1)print}' | awk -F, '{print $1}' | while read -r TABLE; do bq cp -f "${SRC}.${TABLE}" "${SRC}.${TABLE}_transformed_${RANDOM}" && bq rm -f "${SRC}.${TABLE}";done