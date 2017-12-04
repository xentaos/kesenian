#!/usr/bin/env bash
# This file is part of Xenta OS Project Management.
# 
# decrypt.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# decrypt.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet decrypt
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *gpg)
do
  name=${file%%.gpg}
  uid=root@dev.xentaos.org
  echo " Decrypt Berkas $name.gpg Menjadi Berkas $name.svg..."
  gpg --output $name.pdf --decrypt --recipient $uid $name.gpg
  echo " Berhasil..."
done

# IFS=$(echo -en "\n\b")
# for file in $(ls chat*gpg)
# do
#   name=${file%%.gpg}
#   uid=_@dev.xentaos.org
#   echo " Decrypt Berkas $name.gpg Menjadi Berkas $name._..."
#   gpg --output $name._ --decrypt --recipient $uid $name.gpg
#   echo " Berhasil..."
# done
