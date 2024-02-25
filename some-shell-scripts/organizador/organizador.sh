#!/usr/bin/env bash
# script: organizador
# describe: A simple shell script to organize files and clean the downloads directory
# date: 25/02/2024
# author: João Vitor Mendes Pinto dos Santos <joao.v.m.p.santos@ieee.org> <joao.vitor.mendes.pinto@gmail.com>
# github: https://github.com/juauzitor
# version: 0.0.5

# Create a log/organizador if then it doesn't exist and the temp log file.
mkdir -p $HOME/.var/log/organizador
touch $HOME/.var/log/organizador/log.temp
# If the type is out of range
printf "If any file name is printed probably\nThis file extension is not in the switch case range or this is a directory\nYou need to organize this file manually or add it to the switch case range and rerun the script\n"
echo "------------------------------------------------------------"
#read the dir and move the files
for i in $HOME/Downloads/*;do 
    case `echo "$i" | sed 's/.*\.//'` in
        # Documents
        "pdf"|"iso"|"oxt"|"torrent"|"xlsx"|"PDF"|"docx"|"pptx"|"epub"|"csv"|"ppt"|"odt"|"bin"|"ods"|"odp"|"doc") 
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            mv "`echo "$i"`" $HOME/Documents/
        ;;
        # Images
        "jpg"|"jpeg"|"png"|"svg") 
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            mv "`echo "$i"`" $HOME/Pictures/
        ;;
        # Packages
        "deb"|"7z"|"bz2"|"AppImage"|"appimage"|"gz"|"rar"|"xz"|"zip"|"exe")
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            mv "`echo "$i"`" $HOME/Documents/archives/
        ;;
        *) 
            echo "$i"
        ;;
    esac
done

# Change the name to date and hour of the end of execution
mv $HOME/.var/log/organizador/log.temp  $HOME/.var/log/organizador/"log `date "+%Y-%m-%d %H:%M:%S"`"
# Revoke write and execute permission
chmod 444 $HOME/.var/log/organizador/"`find $HOME/.var/log/organizador/ -type f -printf "%p\\n"|sort|sed -e 's/.*\///' -e '$p' -e '1,$d'`"
# Message from the end of script  
echo "------------------------------------------------------------"
echo "The script ended, the files were moved and the log added in ~/.var/organizador"
