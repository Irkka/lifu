#! /bin/bash
#
# find_jpg_count_by_current_month.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


find . -name "$(date +%Y)$(date +%m)*.jpg"

