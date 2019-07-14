#!/bin/bash

ls /home/oracle/Desktop/PROGETTI_ODI > result.txt;

filename=result.txt;

while IFS= read -r line; do
    data_file="$(find /home/oracle/Desktop/PROGETTI_ODI/$line -printf ""%Td-%Tm-%TY"")"
    echo $line $data_file >> result2.txt
done < $filename

mv result2.txt $filename;
