#!/usr/bin/env bash
# This file is part of Xenta OS Project Management.
# 
# make2sticker.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# make2sticker.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet make2sticker
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(cat *.txt)
do
  name=${file%%.svg}
  # Silahkan Isi Tinggi dalam ukuran pixel di export berkas png
  # Silahkan Isi Tinggi disini :
  height="512"
  # Silahkan Isi Lebar dalam ukuran pixel di export berkas png
  # Silahkan Isi Lebar disini :
  width="512"
  echo "Membuat Sticker Mengatakan: $name..."
  cp MESSAGES.svg $name.svg
  sed -i "s/ABCDEFGHIJKLMNOPQRSTUPWXYZ/$name/g" "$name.svg"
  inkscape "$name.svg" --export-png=$name.png --export-height=$height --export-width=$width  
echo "Berhasil.."
done
