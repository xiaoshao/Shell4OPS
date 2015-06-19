#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "I will use 'touch' command to create 3 files"
read -p "please input your filename" fileuser
filename = ${fileuser:-"filename"}

date1 = ${date --date='2 days ago' +%y%m%d}
file=${filename}${date1}
touch $file
