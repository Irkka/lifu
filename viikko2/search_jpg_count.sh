#! /bin/bash
#
# search_jpg_count.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


echo ls --full-time | grep "2011-11" | grep "*.jpg$" | wc -l

