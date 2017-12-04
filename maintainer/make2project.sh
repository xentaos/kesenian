#!/usr/bin/env bash
# This file is part of Xenta OS Project Management.
# 
# make2project.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# make2project.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
project='project'
figlet make2project
mkdir -p $project/{concept,source}
cp README.md $project/concept/README.md
cp README.md $project/source/README.md
cp src/svg2png $project/source/
cp src/_xenta_os_art.png $project/source/
cp src/_xenta_os_art.svg $project/source/
cp src/PROJECT.md $project/
cp src/TEAM.md $project/
cp src/*.sh $project/source/
