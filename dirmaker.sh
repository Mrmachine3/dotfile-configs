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

# Creating base directory structure
echo "Creating $BASE directory structure..."
mkdir -p "$DIR" && sleep 1

# Creating course intro about markdown file within course subdirectory
cd "$DIR"
touch ABOUT.md
sleep 1
echo "$COURSE - $TITLE" >> ABOUT.md
echo "Professor " >> ABOUT.md
echo "Created date: $(date +%m-%d-%Y)" >> ABOUT.md
echo "Created by: Mr. Machine" >> ABOUT.md
echo "Created $TITLE markdown file located in $COURSE subdirectory"
sleep 3

# Creating subdirectories in course folder
cd "$DIR"
mkdir admin
mkdir archive
mkdir research
mkdir notes
echo "Created subdirectories in $COURSE folder..."
echo "tree -aC $PWD"
sleep 5

# Create subdirectories in notes subfolder
cd "$DIR"/notes
echo "tree -aC $PWD"
sleep 3
mkdir flashcards
mkdir images
echo "Created flashcards and images folder in notes folder..."
sleep 1

# command line feedback on directory tree generation
cd ~/Desktop/$BASE
tree -aC $BASE
echo " "
echo "$BASE directory created on" $(date +%m-%d-%Y)
echo "DONE...dirmaker.sh script was completed successfully"
