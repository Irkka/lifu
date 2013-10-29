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
		images=$(find $1 -iname "*.jpg" | tr "\n" ' ')	
		for img in $images; do
			prefix=$(echo $img | cut -d . -f 1)
			outputfile=$prefix-hipstah.jpg
			convert -sepia-tone 60% +polaroid $img $outputfile
		done
	else
		echo "Not a directory."
	fi

fi
