#!/usr/bin/env bash

# author: Maysaa' Al-Binni
# inputs: The name of the study to be downloaded from cBioPortal without the path
# outputs: downloads, extracts, and places the cBioPortal data set into raw_data
# into its own directory with the same name (it makes its own directory)
#
# I am trying to find cancer expression data with some clinical variables
# also so as to apply survival analysis. I am downloding these data sets
# using Ubuntu subsystem shell. I could also be using R client.
# To use this script, you need to know the name of the study from:
# https://www.cbioportal.org/datasets

archive=$1

wget -nc -P raw_data/cbioportal https://cbioportal-datahub.s3.amazonaws.com/"$archive"
tar -xf raw_data/cbioportal/"$archive" -C raw_data/cbioportal
rm raw_data/cbioportal/"$archive"