#! /bin/bash
#
# in_tsv_format.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#

while read -r line; do
	echo $line | sed -r 's/.*([[:digit:]]{2}).*([[:digit:]]{4}.[[:digit:]]{2}.[[:digit:]]{2}).*([[:digit:]]{2}:[[:digit:]]{2}).*/\2 \3\t\1/g'
done
