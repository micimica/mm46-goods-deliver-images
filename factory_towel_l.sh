#!/usr/bin/env sh

# Towel - Big size
# https://factory.pixiv.net/products/towel
# -----------------------------
# image size      : 40 x 37 cm (4371 x 4725 px recommended)
# circle size     : 5 cm
# circle count    : 8 (per 40cm)
# repeatable unit : 546 x 2 = 1092 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 1100x1100 -crop 1092x1092+4+4 resources/mm46_neutral_unit.svg mm46_towel_l_neutral_unit.png
convert +append `seq 1 8 | awk '{printf "mm46_towel_l_neutral_unit.png "}'` mm46_towel_l_neutral_line.png
convert -append `seq 1 8 | awk '{printf "mm46_towel_l_neutral_line.png "}'` mm46_towel_l_neutral_rect.png
convert -density 1200 -rotate +30 mm46_towel_l_neutral_rect.png mm46_towel_l_neutral_rot.png
convert -density 1200 -gravity center -crop 4371x4725-2186-2363 mm46_towel_l_neutral_rot.png images-dist/mm46_towel_l_neutral.png
rm -f mm46_towel_l_neutral_*.png

# chromatic variation
convert -density 1200 -resize 1100x1100 -crop 1092x1092+4+4 resources/mm46_chromatic_unit.svg mm46_towel_l_chromatic_unit.png
convert +append `seq 1 8 | awk '{printf "mm46_towel_l_chromatic_unit.png "}'` mm46_towel_l_chromatic_line.png
convert -append `seq 1 8 | awk '{printf "mm46_towel_l_chromatic_line.png "}'` mm46_towel_l_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_towel_l_chromatic_rect.png mm46_towel_l_chromatic_rot.png
convert -density 1200 -gravity center -crop 4371x4725-2186-2363 mm46_towel_l_chromatic_rot.png images-dist/mm46_towel_l_chromatic.png
rm -f mm46_towel_l_chromatic_*.png
