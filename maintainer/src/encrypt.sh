#!/usr/bin/env bash
# This file is part of Xenta OS Project Management.
# 
# encrypt.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# encrypt.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet encrypt
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  uid=root@dev.xentaos.org
  echo " Encrypt Berkas $name.svg Menjadi Berkas $name.gpg..."
  gpg --output $name.gpg --encrypt --recipient $uid $name.svg
  echo " Berhasil..."
done

# SAVEIF=$IFS
# IFS=$(echo -en "\n\b")
# for file in $(ls *_)
# do
#   name=${file%%._}
#   uid=_@dev.xentaos.org
#   echo " Encrypt Berkas $name._ Menjadi Berkas $name.gpg..."
#   gpg --output $name.gpg --encrypt --recipient $uid $name._
#   echo " Berhasil..."
# done
