#! /bin/bash
#
# cut_em_temps.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


#DATA_DIR=./lost24/monitor/2011.10.11
#find cut grep uniq
if [[ -z $1 ]]; then
	DATE="2011.10.11"
else
	DATE=$1
fi

cat $(find . -name "hp-temps.txt" | grep $DATE | tr "\n" ' ') | grep PROCESSOR_ZONE | tr -s ' ' | cut -d ' ' -f 4 | cut -c1-3 | uniq
