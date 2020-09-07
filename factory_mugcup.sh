#!/usr/bin/env sh

# mugcup
# https://factory.pixiv.net/products/standard_mug
# -----------------------------
# image size      : 235 x 95 cm (3591 x 1495 px recommended)
# circle size     : 7.5 mm
# circle count    : 12.7 (per 95cm)
# repeatable unit : 118 x 2 = 236 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 240x240 -crop 236x236+2+2 resources/mm46_neutral_unit.svg mm46_mugcup_neutral_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_mugcup_neutral_unit.png "}'` mm46_mugcup_neutral_line.png
convert -append `seq 1 25 | awk '{printf "mm46_mugcup_neutral_line.png "}'` mm46_mugcup_neutral_rect.png
convert -density 1200 -rotate +30 mm46_mugcup_neutral_rect.png mm46_mugcup_neutral_rot.png
convert -density 1200 -gravity center -crop 3591x1495-1796-748 mm46_mugcup_neutral_rot.png images-dist/mm46_mugcup_neutral.png
rm -f mm46_mugcup_neutral_*.png

# chromatic variation
convert -density 1200 -resize 240x240 -crop 236x236+2+2 resources/mm46_chromatic_unit.svg mm46_mugcup_chromatic_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_mugcup_chromatic_unit.png "}'` mm46_mugcup_chromatic_line.png
convert -append `seq 1 25 | awk '{printf "mm46_mugcup_chromatic_line.png "}'` mm46_mugcup_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_mugcup_chromatic_rect.png mm46_mugcup_chromatic_rot.png
convert -density 1200 -gravity center -crop 3591x1495-1796-748 mm46_mugcup_chromatic_rot.png images-dist/mm46_mugcup_chromatic.png
rm -f mm46_mugcup_chromatic_*.png
