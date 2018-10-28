#!/bin/bash
# A bash script to  create the following directory tree:
# /home/mrmachine/Desktop/$BASE
#    ├── YEAR
#    │   ├── QTR
#    │   │   ├─── COURSE
#    │   │   │   ├── ABOUT.md
#    │   │   │   ├── !ADMIN
#    │   │   │   ├── archive
#    │   │   │   ├── research
#    │   │   │   ├── images
#    │   │   │   ├── notes
#    │   │   │   ├── flashcards
#    │   │   │   ├── homework

echo -n "Enter name of base directory: "
read BASE
echo -n "Enter year of subdirectory: "
read YEAR
echo -n "Enter academic quarter of subdirectory: "
read QTR
echo -n "Enter course #: "
read COURSE
echo -n "Enter course title: "
read TITLE

sleep 2

# Creating base directory structure
echo "Creating $BASE directory structure..." && sleep 1
mkdir -p "$BASE"/"$YEAR"/"$QTR"/"$COURSE"
sleep 1

# Creating course intro about markdown file within course subdirectory
cd "$BASE"/"$YEAR"/"$QTR"/"$COURSE" 
touch ABOUT.md
echo " $COURSE - $TITLE" >> ABOUT.md
echo "[INSERT FILE HEADER]" >> ABOUT.md
echo '"Created date: $(date +%m-%d-%Y)"'>> ABOUT.md
echo "Created $TITLE markdown file located in $COURSE subdirectory"
sleep 1

# Creating subdirectories in course folder
echo "Changing directory to $BASE/$YEAR/$QTR/$COURSE..."
cd "$BASE"/"$YEAR"/"$QTR"/"$COURSE"
mkdir -p ./{ADMIN,archive,research, notes}
echo "Created subdirectories in $COURSE folder..."
sleep 2

# command line feedback on directory tree generation
tree -aC $BASE
echo " "
echo "$BASE directory created on" $(date +%m-%d-%Y)
echo "DONE...dirmaker.sh script was completed successfully"
