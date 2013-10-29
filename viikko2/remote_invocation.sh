#! /bin/bash
#
# remote_invocation.sh
# Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
#
# Distributed under terms of the WTFPL license.
#
test_command="$(command -v "$2")"
test_value=$?
if [[ $# -lt 2 || $# -gt 2 ]]; then
	echo "Invalid number of arguments"
elif [[ $test_value -ne 0 ]]; then
	echo "Second argument not a command, at least on this host"
else
	echo $1
	echo $2
	returned_output=$(ssh $1 "$2")
	echo $returned_output
fi

