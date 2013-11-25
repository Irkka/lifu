#! /bin/bash
#
# 4_daily_maximum_redux.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


for dir in "$@"; do
	./2_warmest.sh $dir
done

