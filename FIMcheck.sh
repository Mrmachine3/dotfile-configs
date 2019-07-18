#/!/bin/bash # Define your configuration file repo
CONFIG='/mnt/c/Users/atone/Desktop/github_repos/dotfile-configs/'
ZZ="1"

GETLIST=$(ls $CONFIG)

echo -e "Listing configuration files for file integrity checking...\n"

for i in $GETLIST; do
    if [ ! -d "$i" ]
    then
    md5deep -k $i -W fimList.txt
    fi
done

sleep $ZZ

cat fimList.txt
