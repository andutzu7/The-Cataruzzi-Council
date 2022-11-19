#!/bin/bash
music_list_file=$1
links_out_file=$2
while read p; do
	clean_query=$(echo $p | sed -r 's/- //' )
	echo $(ytfzf -i l -a $clean_query)>>$links_out_file
 done < "$music_list_file"
