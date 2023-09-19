#! /bin/bash
if [[ $# -ne 1 ]]; then
	echo "Usage: ./run.sh file.pdb"
	exit 1
fi

cat "$1" | docker run -i --rm openmm-utils
