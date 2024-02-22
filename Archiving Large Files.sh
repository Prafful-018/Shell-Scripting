#!/bin/bash
#$Revision:001$
#$Thu Feb 22 06:54:10 IST 2024$

#Variables
BASE=/home/prafful/New_Folder
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [ ! -d $BASE ]
then
        echo "directory does not exist: $BASE"
        exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then
mkdir $BASE/archive
fi

#Find the list of files larger than 10MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +10M`
do
        if [ $RUN -eq 0 ]
        then
                echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
                gzip $i || exit 1
                mv $i.gz $BASE/archive || exit 1
        fi
done


~
~
~
~
~
~
~
~
"archive_project" 35L, 601C                                                                                                                27,5-12       All
