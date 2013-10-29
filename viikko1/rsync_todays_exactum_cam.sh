#! /bin/bash
#
# rsync_todays_exactum_cam.sh
# Copyright (C) 2013 Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


echo "rsync --stats --archive ~tkt_cam/public_html/`date +%Y`/`date +%m`/`date +%d` ./"

