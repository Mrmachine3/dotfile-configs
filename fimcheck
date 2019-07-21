#/!/bin/bash # Define your configuration file repo
CONFIG='/mnt/c/Users/atone/Desktop/github_repos/dotfile-configs/'
ZZ="1"

GETLIST=$(ls $CONFIG)

get_hash () {
echo -e "Listing configuration files for hash generation...\n"
    if [ ! -d "$i" ]
    then
    echo -e "MD5 FILE HASHES"
    md5deep -k $i >> fimList.txt
    fi
    sleep $ZZ 
    cat fimList.txt
}

for i in $GETLIST; do get_hash done

check_hash () {
echo -e "Listing configuration files for file integrity checking...\n"
# if fimList file exists, read line by line and check newly generated hash value to saved hash value
}
