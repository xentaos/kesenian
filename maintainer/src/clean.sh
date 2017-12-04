#!/usr/bin/env bash
# This file is part of Xenta OS Project Management.
# 
# clean.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# clean.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet clean
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *png)
do
  name=${file%%.png}
  echo " Menghapus Berkas $name.png..."
  rm -rf $name.png
  echo " Berhasil..."
done

SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  echo " Menghapus Berkas $name.svg..."
  rm -rf $name.svg
  echo " Berhasil..."
done

# SAVEIF=$IFS
# IFS=$(echo -en "\n\b")
# for file in $(ls *_)
# do
#  name=${file%%._}
#  echo " Menghapus Berkas $name._..."
#  rm -rf $name._
#  echo " Berhasil..."
# done
