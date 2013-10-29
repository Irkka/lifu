#! /bin/bash
#
# temp_dir_timed.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#

TMP_PARENT=./tmp
echo $(pwd)

for (( i = 0; i < 3; i++ )); do
	TMPDIR=$(mktemp -d --tmpdir=./tmp)
	TIME=%E time -o $TMP_PARENT/time_local_"$i".txt ./curl_extract.sh "$TMPDIR"
	rm -r $TMPDIR
done

for (( i = 0; i < 3; i++ )); do
	TMPDIR=$(mktemp -d --tmpdir=./tmp)
	TIME=%E time -o $TMP_PARENT/time_distributed_"$i".txt ./distributed_curl_extract.sh "$TMPDIR"
	rm -r $TMPDIR
done

