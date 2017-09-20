#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo 'Usage: ./fitnam.sh {filename}'
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

file=`echo "$1"`

familyName=(
  "Bui"
  "Cao"
  "Dang"
  "Dao"
  "Do" 
  "Doan"
  "Duong"
  "Huynh"
  "Le"
  "Luu"
  "Ly"
  "Mai"
  "Ngo"
  "Nguyen"
  "Pham"
  "Thai"
  "Tiep"
  "Tran"
  "Trieu"
  "Trong"
  "Truong"
  "Truong"
  "Van"
  "Vo"
  "Vu"
)

for i in "${familyName[@]}"
do 
  name=`echo "$i"`
  cat $file | cut -d":" -f5 | grep -E \("$name"[[:blank:]]\|[[:blank:]]"$name"[[:blank:]]\) >> tmp_names.txt

  nameFem=`echo "$name"ova`
  cat $file | cut -d":" -f5 | grep -E \("$nameFem"[[:blank:]]\|[[:blank:]]"$nameFem"[[:blank:]]\) >> tmp_names.txt
done

cat tmp_names.txt | nl

rm tmp_names.txt
