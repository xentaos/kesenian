#!/bin/bash
# imgall.sh
# Copyright (C) 2017  Dindin Hernawan <root@dev.xentaos.org>
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
mkdir temp
cp *.png ./temp
cd temp
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *png)
do
  name=${file%%.png}
  HOME=$HOME
  mogrify -resize 256x256 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/256/$name.png
  echo " Mengubah $name.png Ukuran 256x256  Target Xenta-X/apps/256/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 128x128 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/128/$name.png
  echo " Mengubah $name.png Ukuran 128x128  Target Xenta-X/apps/128/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 96x96 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/96/$name.png
  echo " Mengubah $name.png Ukuran 96x96  Target Xenta-X/apps/96/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 48x48 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/48/$name.png
  echo " Mengubah $name.png Ukuran 48x48  Target Xenta-X/apps/48/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 32x32 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/32/$name.png
  echo " Mengubah $name.png Ukuran 32x32  Target Xenta-X/apps/32/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 24x24 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/24/$name.png
  echo " Mengubah $name.png Ukuran 24x24  Target Xenta-X/apps/24/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 22x22 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/22/$name.png
  echo " Mengubah $name.png Ukuran 22x22  Target Xenta-X/apps/22/$name.png"
  echo " Mengubah $name.png Sukses"
  mogrify -resize 16x16 $name.png
  cp $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/16/$name.png
  echo " Mengubah $name.png Ukuran 16x16  Target Xenta-X/apps/16/$name.png"
  echo " Mengubah $name.png Sukses"
done
cd ..
rm -rf temp
