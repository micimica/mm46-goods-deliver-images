#!/usr/bin/env sh

# blanket
# https://factory.pixiv.net/products/blanket
# -----------------------------
# image size      : 700 x 1000 mm (4430 x 6201 px recommended)
# circle size     : 70 mm
# circle count    : 14 + 2 (per 700mm)
# repeatable unit : 388 x 2 = 776 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 784x784 -crop 776x776+4+4 resources/mm46_neutral_unit.svg mm46_blanket_neutral_unit.png
convert +append `seq 1 20 | awk '{printf "mm46_blanket_neutral_unit.png "}'` mm46_blanket_neutral_line.png
convert -append `seq 1 20 | awk '{printf "mm46_blanket_neutral_line.png "}'` mm46_blanket_neutral_rect.png
convert -density 1200 -rotate +30 mm46_blanket_neutral_rect.png mm46_blanket_neutral_rot.png
convert -density 1200 -crop 4430x6201+8386+7501 mm46_blanket_neutral_rot.png images-dist/mm46_blanket_neutral.png
rm -f mm46_blanket_neutral_*.png

# chromatic variation
convert -density 1200 -resize 784x784 -crop 776x776+4+4 resources/mm46_chromatic_unit.svg mm46_blanket_chromatic_unit.png
convert +append `seq 1 20 | awk '{printf "mm46_blanket_chromatic_unit.png "}'` mm46_blanket_chromatic_line.png
convert -append `seq 1 20 | awk '{printf "mm46_blanket_chromatic_line.png "}'` mm46_blanket_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_blanket_chromatic_rect.png mm46_blanket_chromatic_rot.png
convert -density 1200 -crop 4430x6201+8386+7501 mm46_blanket_chromatic_rot.png images-dist/mm46_blanket_chromatic.png
rm -f mm46_blanket_chromatic_*.png
