#!/bin/bash
# A bash script to  create the following directory tree:
# /home/mrmachine/Desktop/$BASE
#    ├── YEAR
#    │   ├── QTR
#    │   │   ├─── COURSE
#    │   │   │   ├── ABOUT.md
#    │   │   │   ├── admin
#    │   │   │   ├── archive
#    │   │   │   ├── research
#    │   │   │   ├── notes
#    │   │   │   │   ├── images
#    │   │   │   │   ├── flashcards
#    │   │   │   ├── homework

echo -n "Enter name of base directory: "
read BASE
echo -n "Enter year: "
read YEAR
echo -n "Enter academic quarter: "
read QTR
echo -n "Enter course #: "
read COURSE
echo -n "Enter course title: "
read TITLE
sleep 1

# Defining directory filepath
DIR="$BASE"/"$YEAR"/"$QTR"/"$COURSE"
DESK="$HOME"/Desktop

# Creating base directory structure
echo "Creating $BASE directory tree structure..."
mkdir -p "$DIR" && sleep 1

# Creating course intro about markdown file within course subdirectory
cd "$DIR" && touch ABOUT.md
sleep 1
echo "<!---$COURSE - $TITLE-->" >> ABOUT.md
echo "<!---Professor -->" >> ABOUT.md
echo "<!---Created date: $(date +%m-%d-%Y)-->" >> ABOUT.md
echo "<!---Created by: Mr. Machine-->" >> ABOUT.md
echo "Creating $COURSE markdown file..."
sleep 1

# Creating subdirectories in course folder
cd "$DESK"/"$DIR"
mkdir admin; mkdir archive; mkdir research; mkdir notes
echo "Creating admin, archive, research, notes sub-folders in $COURSE folder..."
sleep 1

# Create subdirectories in notes subfolder
cd "$DESK"/"$DIR"/notes && sleep 1
mkdir flashcards; mkdir images
echo "Creating flashcards and images sub-folders in notes folder..."
sleep 1

echo " "

# Display progress bar 
function ProgressBar {
# Process data
	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
# Build progressbar string lengths
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${_done// /#}${_left// /-}] ${_progress}%%"

}

# Variables
_start=1

# This accounts as the "totalState" variable for the ProgressBar function
_end=100

# Proof of concept
for number in $(seq ${_start} ${_end})
do
	sleep 0.1
	ProgressBar ${number} ${_end}
done

# command line feedback on directory tree generation
cd "$DESK"/"$BASE"
export NEWTREE=~/Desktop/$BASE
echo " "
sleep 1
tree -aC $NEWTREE

printf '\nFinished...dirmaker.sh script completed successfully!\n'
echo "The $BASE directory tree created on" $(date +%m-%d-%Y)
echo " "

#To Do
# check if base directory exists, if so skip
# validate base directory name by only allowing "dpu_masters"
# check if year director exists, if so skip
# check if quarter director exists, if so skip
# add about.md file to base directory to give introduction to master's program
