#! /bin/bash
#
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#

export highest='N/A'
export lowest='N/A'

for dir in "$@"; do
	if [[ ! -d $dir ]]; then
		echo "Invalid parameter. Only valid directories accepted."
		exit 1
	fi
done

dirs="\($(echo "$@" | sed -e 's:\ :\\|:g')\)"
#echo $dirs
#find . -regex "./${dirs}.*hp-temps.txt"
find . -regex "./${dirs}.*hp-temps.txt" | { while read line; do
	file=$line
	temp=$(cat $line | grep PROCESSOR_ZONE | sed -e 's/\ \+/\ /g' | cut -d ' ' -f 3 | cut -c 1-2)
	#echo $file $temp
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
}
