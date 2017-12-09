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

SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=16 --export-width=16
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/16/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=22 --export-width=22
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/22/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=24 --export-width=24
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/24/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=32 --export-width=32
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/32/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=48 --export-width=48
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/48/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=96 --export-width=96
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/96/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=128 --export-width=128
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/128/
done
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *svg)
do
  name=${file%%.svg}
  HOME=$HOME
  inkscape $name.svg --export-png=$name.png --export-height=256 --export-width=256
  mv $name.png /home/dindin/xentaos/pemaketan/packages/main/x/xenta-x-icons/xenta-x-icons/usr/share/icons/Xenta-X/apps/256/
done
