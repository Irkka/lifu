#! /bin/bash
#
# 3_hipstafy_wait.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#

while read line
do
	echo "Hello!"
	./hipstafy_modified.sh ./hipstafy_dropbox
done < <(inotifywait -e MOVED_TO -e CLOSE_WRITE -m hipstafy_dropbox)

