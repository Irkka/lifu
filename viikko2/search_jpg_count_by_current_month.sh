#! /bin/bash
#
# search_jpg_count_by_current_month.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


ls --full-time | grep "$(date +%Y)-$(date +%m)-.*\.jpg$" | wc -l

