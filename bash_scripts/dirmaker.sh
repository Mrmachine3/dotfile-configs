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


echo -n "Enter name of your base directory: " 
read BASE

if [[ -d $BASE ]] 
then
	cd $BASE && echo -n "Enter academic year (YYYY): "
	read YEAR
else
	if [[ -d $YEAR ]] 
	then
		cd $YEAR && echo -n "Enter academic quarter ({WQ/SQ/FQ}YY): "
		read QTR
	else
		if [[ -d $QTR ]]
		then 
			cd $QTR && echo -n "Enter course # (example TDC-411): " 
			read COURSE; sleep 1 && echo -n "Enter course title: " && read TITLE; sleep 1
			cd $COURSE
		else
			echo "Creating $BASE directory tree structure..." && mkdir $BASE && cd $BASE
			echo -n "Enter academic year: " && read YEAR && mkdir $YEAR && cd $YEAR
			echo -n "Enter academic quarter ({WQ/SQ/FQ}YY): " && read QTR && mkdir $QTR && cd $QTR
			echo -n "Enter course # (example TDC-411): " && read COURSE && mkdir $COURSE && cd $COURSE
			echo -n "Enter course title: " && read TITLE
		fi;
	fi;
fi;

# Defining directory filepath
DESK="$HOME"/Desktop
BASE="$BASE"
TREE="$BASE"/"$YEAR"/"$QTR"/"$COURSE"

# Creating course intro about markdown file within course subdirectory 
touch ABOUT.md 
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
sleep 1 && cd $DESK/$BASE

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
	# 1.2.1 Progress : [########################################] 100%
	printf "\rProgress : [${_done// /#}${_left// /-}] ${_progress}%%"
}

# This accounts as the totalState variable for the ProgressBar function
	_start=1
	_end=100

# Proof of concept
for number in $(seq ${_start} ${_end})
	do
		sleep 0.05
		ProgressBar ${number} ${_end}
	done

# command line feedback on directory tree generation
cd ~/Desktop/$BASE
export NEWTREE=$PWD
echo " " && sleep 1
tree -aC $NEWTREE

printf "\nFinished...dirmaker.sh script completed successfully!\n"
echo "The $BASE directory tree was created on $today"
echo " "

#To Do
# validate base directory name by only allowing "dpu_masters"
# add about masters program md file to base directory
