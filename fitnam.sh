#!/bin/bash

familyName=(
  "Do" 
  "Le"
  "Ngo"
  "Nguyen"
  "Pham"
  "Tiep"
  "Tran"
  "Trieu"
  "Trong"
  "Truong"
  "Van"
)

for i in "${familyName[@]}"
do 
  name=`echo "$i"`
  cat students.txt | cut -d":" -f5 | grep -E \("$name"[[:blank:]]\|[[:blank:]]"$name"[[:blank:]]\) >> tmp_names.txt

  nameFem=`echo "$name"ova`
  cat students.txt | cut -d":" -f5 | grep -E \("$nameFem"[[:blank:]]\|[[:blank:]]"$nameFem"[[:blank:]]\) >> tmp_names.txt
done

cat tmp_names.txt | nl

rm tmp_names.txt
