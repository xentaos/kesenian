#!/usr/bin/env bash
# This file is part of Xenta OS Project Management.
# 
# svg2png.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# svg2png.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet svg2png
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  # Silahkan Isi Tinggi dalam ukuran pixel di export berkas png
  # Silahkan Isi Tinggi disini :
  height="500"
  # Silahkan Isi Lebar dalam ukuran pixel di export berkas png
  # Silahkan Isi Lebar disini :
  width="500"
  echo "Export Berkas $name..."
  inkscape $name.svg --export-png=$name.png --export-height=$height --export-width=$width
  echo "Berhasil.."
done
