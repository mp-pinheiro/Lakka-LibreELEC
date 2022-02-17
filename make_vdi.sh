#!/bin/bash
gunzip "$1.img.gz"
"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" convertfromraw -format VDI "$1.img" "$1.vdi"
