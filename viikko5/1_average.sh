#! /bin/bash
#
# 1_average.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#

statement=""
for arg in "$@"; do
	if [[ ! $arg = *[[:digit:]]* ]]; then
		echo "Not an integer"
		exit 1
	else
		#echo "Math"
		if [[ -z $statement ]]; then
			statement="$arg"
		else
			statement="$statement + $arg"
		fi
	fi
done

echo "scale=2; ($statement) / $#" | bc
