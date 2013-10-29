#! /bin/bash
#
# loop_em_temps.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#



#temps=$(cat $(find . -regex ".*2011.10.*/*./hp-temps.txt" | tr "\n" ' ') | grep PROCESSOR_ZONE | sed -e 's/\ \+/\ /g' | cut -d ' ' -f 3 | cut -c 1-2 | tr "\n" ' ')

#highest='N/A'
#lowest='N/A'
#for temp in $temps; do

	#if [[ $highest = 'N/A' || $temp -gt $highest ]]; then
		#highest=$temp
	#fi

	#if [[ $lowest = 'N/A' || $lowest -gt $temp ]]; then
		#lowest=$temp
	#fi	
#done
#echo -e "Highest was: $highest\nLowest was: $lowest"

files=$(find . -regex ".*2011.10.*/*./hp-temps.txt" | tr "\n" ' ')

highest='N/A'
lowest='N/A'
for file in $files; do
	temp=$(cat $file | grep PROCESSOR_ZONE | sed -e 's/\ \+/\ /g' | cut -d ' ' -f 3 | cut -c 1-2)
	if [[ $highest = 'N/A' || $temp -gt $highest ]]; then
		highest=$temp
		high_file=$file
	fi

	if [[ $lowest = 'N/A' || $lowest -gt $temp ]]; then
		lowest=$temp
		low_file=$file
	fi	
done

echo -e "Highest was: $highest @$high_file\nLowest was: $lowest @$low_file"
