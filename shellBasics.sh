#! /bin/bash
# toturial:
# http://www.runoob.com/linux/linux-shell-variable.html

# list all the files in the folder.
for file in `ls .`
do
	echo $file
done