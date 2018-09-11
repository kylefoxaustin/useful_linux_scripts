#!/bin/bash
if [ "$1" = "" ]; then
    echo "USAGE:  test_empty.sh /some/dir"
    echo "checks if directory exists, and whether it is empty or not"
    echo "returns: "
    echo "        /some/dir is empty -- if /some/dir contains nothing"
    echo "        /some/dir is NOT empty -- if /some/dir contains anything at all"
    echo "        /some/dir doesn't exist -- if the directory is not there"
    exit 0
fi

# Loop until all parameters are used up
while [ "$1" != "" ]; do
     SOMEDIR=$1
     # check if directory in $1 even exists
     if [ ! -d "$SOMEDIR" ]; then
	 # Control will enter here if $SOMEDIR does NOT exist.
	 echo "Directory $SOMEDIR does NOT exist, therefore it is empty as well"
	 shift
	 continue
     fi
     # check if directory is empty or not
     if find $SOMEDIR -mindepth 1 | read; then
	 # evaluated as TRUE so therefore something is in the directory
	 echo "$SOMEDIR is NOT empty"
	 shift
	 continue
     else
	# evaluated as FALSE so therefore nothing is in the directory
	echo "$SOMEDIR is empty" 
	shift
	continue
     fi
done

exit 0

