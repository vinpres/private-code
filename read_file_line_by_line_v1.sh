#!/bin/bash

ls /home/oracle/Desktop/PROGETTI_ODI > result.txt;

filename=result.txt;

while IFS= read -r line; do
    data_file="$(stat -c %y /home/oracle/Desktop/PROGETTI_ODI/$line)";
    data_file="$(echo $data_file | cut -c 1-19)"
    sed s/$/2$data_file
    echo "$data_file"
done < $filename


--*********************************************** questa di seguito è la versione funzionante

#!/bin/bash

ls /home/oracle/Desktop/PROGETTI_ODI > result.txt;

filename=result.txt;

while IFS= read -r line; do
    data_file="$(stat -c %y /home/oracle/Desktop/PROGETTI_ODI/$line)";
    data_file="$(echo $data_file | cut -c 1-19)"
    echo $line $data_file >> result2.txt
done < $filename

mv result2.txt $filename;
