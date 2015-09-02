#!/bin/bash

cat index.html > modified.html

echo -n "Type the command:  "
read command

echo  `$command` >  temp.html

sed  "s/CofC/$(cat temp.html)/" modified.html > CSCI362.html

echo  `gnome-open CSCI362.html`

