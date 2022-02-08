#!/usr/bin/env bash
# script: organizador
# describe: A simple shell script to organize files and clean the downloads directory
# date: 08/02/2022
# author: João Vitor Mendes Pinto dos Santos <joao.vitor.mendes.pinto@gmail.com>
# github: https://github.com/juauzitor
# version: 0.0.1

mkdir $HOME/.var/log/organizador
touch $HOME/.var/log/organizador/log.temp

for i in $HOME/Downloads/*;do 
    case `echo "$i" | sed 's/.*\.//'` in
        # Documentos
        "pdf") 
            echo "pdf"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "iso") 
            echo "iso"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "oxt") 
            echo "oxt"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "torrent") 
            echo "torrent"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "xlsx") 
            echo "xlsx"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        # Imagens
        "jpg") 
            echo "jpg"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "jpeg")
            echo "jpeg"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "png") 
            echo "png"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        # Pacotes
        "deb")
            echo "deb"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "7z") 
            echo "7z"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "AppImage"|"appimage") 
            echo "appimage"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "bz2") 
            echo "bz2"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "exe") 
            echo "exe"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "gz") 
            echo "gz"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "rar") 
            echo "rar"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "xz") 
            echo "xz"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "zip") 
            echo "zip"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        # Linguagens de programação
        "c") 
            echo "c"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "py") 
            echo "py"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        "r") 
            echo "r"
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
        *) 
            echo default
            echo "$i" >> $HOME/.var/log/organizador/log.temp
            echo "-------"
        ;;
    esac
done

# Change the name to date and hour of the end of execution
mv $HOME/.var/log/organizador/log.temp  $HOME/.var/log/organizador/"log `date "+%Y-%m-%d %H:%M:%S"`"
# Revoke write and execute permission
chmod 444 $HOME/.var/log/organizador/"`find $HOME/.var/log/organizador/ -type f -printf "%p\\n"|sort|sed -e 's/.*\///' -e '$p' -e '1,$d'`"
# Message from the end of script  
echo "Os arquivos foram organizados"
