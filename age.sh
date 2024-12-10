#!/bin/bash

echo "Enter your date of birth (YYYY-MM-DD): "
read dob

dob_year=$(echo $dob | cut -d'-' -f1)
dob_month=$(echo $dob | cut -d'-' -f2)
dob_day=$(echo $dob | cut -d'-' -f3)

current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)

age=$((current_year - dob_year))
if ((current_month < dob_month || (current_month == dob_month && current_day < dob_day))); then
  age=$((age - 1))
fi

echo "Your age is: $age years"

