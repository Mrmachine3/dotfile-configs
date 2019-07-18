#/!/bin/bash # Define your configuration file repo
CONFIG='/mnt/c/Users/atone/Desktop/github_repos/dotfile-configs/'
ZZ="1"

GETLIST=$(ls -l $CONFIG)

echo -e "Listing configuration files for file integrity checking...\n"
for i in $GETLIST
do
    md5deep -k $i >> fimList.txt
done
sleep $ZZ

cat fimList.txt
