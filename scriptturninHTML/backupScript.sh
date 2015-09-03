#!/bin/bash

ls -m> test.html

sed "s/,/<br>/g" test.html > text.html

xdg-open ./text.html

