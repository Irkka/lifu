#! /bin/bash
#
# environment_change.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#


hello="World"
bash -c 'hello="Hello"; echo "$$ $hello"'
echo "$$ $hello"

