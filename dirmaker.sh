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
sleep 1

YEAR="2019"
QTR="WI'19"
COURSE="TDC411"
# COURSEDIR=ABOUT.md,!ADMIN,archive,research,$NOTESDIR,homework
# NOTESDIR=notes/{images,flashcards}

echo "Creating $BASE directory structure..."
sleep 1

mkdir -pv "$BASE"/$YEAR/$QTR/$COURSE/{ABOUT.md,!ADMIN,archive,research,notes/{images,flashcards},homework
sleep 2 && echo "$BASE directory created on" $(date +%m-%d-%Y) 
sleep 1 && tree -aC $BASE
