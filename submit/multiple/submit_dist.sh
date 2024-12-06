#!/bin/bash

export input_csv=./folding_jobs.csv

while IFS="," read -r input_dir
do
  echo "Submitting Input: $input_dir"
  echo ""

  JOBID=$(sbatch submit_iter.sh $input_dir)
  echo $JOBID

done < <(tail -n +1 $input_csv)