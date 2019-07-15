#!/usr/bin/bash

ls -l /segEC/*.OK | awk '{print substr($9,8) ";" $7"-"$6"-"$8}' > FlussiDir.txt;

filename=FlussiDir.txt;
while IFS= read -r line; do
  if [[ ${line: -5} == *":"* ]]; then   
     data_year_file="$(date +'%Y')"
     echo "${line:: -6}-"$data_year_file >> result2.txt;
  else
     echo $line >> result2.txt
  fi  
done < $filename

mv result2.txt $filename;


#################################################################################################
#                             DESCRIZIONE: calcola anno mese precedente                         #
#################################################################################################


#################################################################################################
#                             DESCRIZIONE: popola il file dei parametri                         #
#################################################################################################
