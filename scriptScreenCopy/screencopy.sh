#!/bin/bash

echo -n "Type the command:  "
read command

echo -n "Type the file name: "
read file

echo  `$command` >  $file

# This is another approach:
#echo `$command` | tee $file

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "The following output has been redirected to the file called <"$file">":
echo "\n"
echo `$command`
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


