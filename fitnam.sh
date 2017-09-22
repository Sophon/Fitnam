#!/bin/bash

errorMsg=`echo 'Usage: ./fitnam.sh {filename} (optional){saveOutput}'`

if [ "$#" -eq 0 ]; then
  echo "$errorMsg"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

file=`echo "$1"`

familyNames=(
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
  "Tam"
  "Thai"
  "Tien"
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

if [ -f ".fitnam.log" ]; then
  echo "deleting old .fitnam.log"
  rm .fitnam.log
fi

for i in "${familyNames[@]}"
do 
  name=`echo "$i"`
  cat $file | grep "\b$name\b" >> .fitnam.log

  nameFem=`echo "$name"ová`
  cat $file | grep -E "\b$nameFem\b" >> .fitnam.log
done

if [ "$#" -eq 1 ]; then
  cat .fitnam.log | nl
  rm .fitnam.log
elif [ "$#" -eq 2 ] && [ "$2" = y ]; then
  cat .fitnam.log | nl > viets.txt
  rm .fitnam.log
  echo "saved output to viets.txt"
  echo "Happy stalking!"
else
  echo "$errorMsg"
  exit 1
fi
