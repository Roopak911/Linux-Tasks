#!/bin/bash


# Create colaborative directories /practice/Audios, /practice/Videos, /practice/Documents.
mkdir -p /practice/Audios/ && mkdir -p /practice/Videos/ && mkdir -p /practice/Documents/


# Create files in /practice directory as SongX.mp3, FilmX.avi, TextX.txt where X = 1 to 10.
cd /practice
touch Song{1..10}.mp3 Film{1..10}.avi Text{1..10}.txt


# Copy those files in there respective directories.
cp -r Song{1..10}.mp3 Audios && cp -r Film{1..10}.avi Videos && cp -r Text{1..10}.txt Documents


# Create drectory as demo in practice directory.
mkdir demo


# Move 5 files from each directory to demo directory.
mv -f Audios/Song{1..5}.mp3 demo && mv -f Videos/Film{1..5}.avi demo && mv -f Documents/Text{1..5}.txt demo


# Remove all files from Audios, Videos, & Documents directories without removing directories.
rm -f Audios/Song{6..10}.mp3 Videos/Film{6..10}.avi Documents/Text{6..10}.txt


# Remove Audios, Videos, & Documents Directory.
rmdir Audios Videos Documents


# Remove /practice directory.
rm -rf *
cd ..
rmdir practice






