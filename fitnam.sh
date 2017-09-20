#!/bin/bash

#Do
#Le
#Ngo
#Nguyen
#Pham
#Tiep
#Tran
#Trieu
#Trong
#Truong
#Van

# familyName=("Do" "Le" "Ngo" "Nguyen" "Pham" "Tiep" "Tran" "Trieu" "Trong" "Truong" "Van")

cat students.txt | cut -d":" -f5 | grep -E '(Do[[:blank:]]|[[:blank:]]Do[[:blank:]]|Doova[[:blank:]]|[[:blank:]]Doova[[:blank:]])' > tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Le[[:blank:]]|[[:blank:]]Le[[:blank:]]|Leova[[:blank:]]|[[:blank:]]Leova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Ngo[[:blank:]]|[[:blank:]]Ngo[[:blank:]]|Ngoova[[:blank:]]|[[:blank:]]Ngoova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Nguyen[[:blank:]]|[[:blank:]]Nguyen[[:blank:]]|Nguyenova[[:blank:]]|[[:blank:]]Nguyenova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Pham[[:blank:]]|[[:blank:]]Pham[[:blank:]]|Phamova[[:blank:]]|[[:blank:]]Phamova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Tiep[[:blank:]]|[[:blank:]]Tiep[[:blank:]]|Tiepova[[:blank:]]|[[:blank:]]Tiepova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Tran[[:blank:]]|[[:blank:]]Tran[[:blank:]]|Tranova[[:blank:]]|[[:blank:]]Tranova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Trieu[[:blank:]]|[[:blank:]]Trieu[[:blank:]]|Trieuova[[:blank:]]|[[:blank:]]Trieuova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Trong[[:blank:]]|[[:blank:]]Trong[[:blank:]]|Trongova[[:blank:]]|[[:blank:]]Trongova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Truong[[:blank:]]|[[:blank:]]Truong[[:blank:]]|Truongova[[:blank:]]|[[:blank:]]Truongova[[:blank:]])' >> tmp_names.txt
cat students.txt | cut -d":" -f5 | grep -E '(Van[[:blank:]]|[[:blank:]]Van[[:blank:]]|Vanova[[:blank:]]|[[:blank:]]Vanova[[:blank:]])' >> tmp_names.txt

cat tmp_names.txt | nl

rm tmp_names.txt