#! /bin/bash
#
# longcat.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#

if [[ $# -eq 1 && $1 -ge 2 ]]; then
	if [[ -e ./shortcat.txt ]]; then
		head -n 9 "./shortcat.txt"
		for (( i = 0; i < $1; i++ )); do
			cat "./shortcat.txt" | sed -n '10p'	
		done
		tail -n 8 "./shortcat.txt" | head -n 7
		echo "longcatz"
	fi
elif [[ $1 -eq 1 ]]; then
	cat "./shortcat.txt"
else
	echo "Anna yksi positiivinen kokonaisluku parametrina."
	exit 1
fi
