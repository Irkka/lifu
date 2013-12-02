#! /bin/bash
#
# hipstafy.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


if [[ $# -ne 1 ]]; then
	echo "Invalid number of parameters."
else
	if [[ -d $1 ]]; then
		echo $1
		images=$(find $1 -maxdepth 1 -iname "*.jpg" | tr "\n" ' ')	
		for img in $images; do
			echo $img
			prefix=$(echo $img | cut -d . -f 2 | cut -d '/' -f 3)
			echo $prefix
			outputfile=$1/hipstafied/$prefix-hipstah.jpg
			convert -sepia-tone 60% +polaroid $img $outputfile
			mv $img $1/converted/
		done
	else
		echo "Not a directory."
	fi

fi
