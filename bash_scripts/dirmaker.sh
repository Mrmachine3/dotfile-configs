#!/bin/bash
todaynotes=$(date +"%m%d%Y")
today=$(date +"%m/%d/%Y")

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


echo -n "Enter name of your base directory:" 
read BASE

if [[ ! -d $BASE ]] 
then
	echo "Creating $BASE directory tree structure..."
	mkdir $BASE && echo -n "Enter academic year (YYYY):"
	read YEAR
else
	cd $BASE && echo -n "Enter academic year (YYYY):"
	read YEAR
	if [[ ! -d $YEAR ]] 
	then
		cd $BASE && mkdir $YEAR && sleep 1
		echo -n "Enter academic quarter ({WQ/SQ/FQ}YY):"
		read QTR
	else
		cd $YEAR && echo -n "Enter academic quarter ({WQ/SQ/FQ}YY):"
		read QTR
		if [[ ! -d $QTR ]]
		then 
			cd $YEAR && mkdir $QTR && sleep 1
			echo -n "Enter course # (example TDC-411):" 
			read COURSE 
			cd $QTR && sleep 1
			mkdir $COURSE && echo -n "Enter course title:"
			read TITLE && sleep 1
		else
			sleep 1
		fi;
	fi;
fi;

# Defining directory filepath
DIR="$BASE"/"$YEAR"/"$QTR"/"$COURSE"
DESK="$HOME"/Desktop

# Creating course intro about markdown file within course subdirectory
cd "$COURSE" && touch ABOUT.md
sleep 1
echo "Creating $COURSE markdown file..."
echo "<!---$COURSE - $TITLE-->" >> ABOUT.md
echo "<!---Professor -->" >> ABOUT.md
echo "<!---Created date: $today -->" >> ABOUT.md
echo "<!---Created by: $USER -->" >> ABOUT.md
sleep 1

# Creating subdirectories in course folder
mkdir admin; mkdir archive; mkdir research; mkdir notes; mkdir homework
echo "Creating admin, archive, research, notes, homework sub-folders in $COURSE folder..."
sleep 1

# Create subdirectories in notes subfolder
cd notes && sleep 1
mkdir flashcards; mkdir images
touch classnotes_"$todaynotes".md
echo "Creating flashcards and images sub-folders in $COURSE/notes folder..."
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
echo "The $BASE directory tree created on $today"
echo " "

#To Do
# validate base directory name by only allowing "dpu_masters"
# add about masters program md file to base directory
