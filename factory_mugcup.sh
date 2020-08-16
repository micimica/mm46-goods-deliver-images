#!/usr/bin/env sh

# mugcup
# https://factory.pixiv.net/products/standard_mug
# -----------------------------
# image size      : 235 x 95 cm (3591 x 1495 px recommended)
# circle size     : 15 mm
# circle count    : 7 (per 95cm)
# repeatable unit : 214 x 2 = 428 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 434x434 -crop 428x428+3+3 resources/mm46_neutral_unit.svg mm46_mugcup_neutral_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_mugcup_neutral_unit.png "}'` mm46_mugcup_neutral_line.png
convert -append `seq 1 25 | awk '{printf "mm46_mugcup_neutral_line.png "}'` mm46_mugcup_neutral_rect.png
convert -density 1200 -rotate +30 mm46_mugcup_neutral_rect.png mm46_mugcup_neutral_rot.png
convert -density 1200 -crop 3591x1495+5514+6562 mm46_mugcup_neutral_rot.png images-dist/mm46_mugcup_neutral.png
rm -f mm46_mugcup_neutral_*.png

# chromatic variation
convert -density 1200 -resize 434x434 -crop 428x428+3+3 resources/mm46_chromatic_unit.svg mm46_mugcup_chromatic_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_mugcup_chromatic_unit.png "}'` mm46_mugcup_chromatic_line.png
convert -append `seq 1 25 | awk '{printf "mm46_mugcup_chromatic_line.png "}'` mm46_mugcup_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_mugcup_chromatic_rect.png mm46_mugcup_chromatic_rot.png
convert -density 1200 -crop 3591x1495+5514+6562 mm46_mugcup_chromatic_rot.png images-dist/mm46_mugcup_chromatic.png
rm -f mm46_mugcup_chromatic_*.png
