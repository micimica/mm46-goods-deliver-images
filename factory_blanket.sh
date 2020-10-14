#!/usr/bin/env sh

# blanket
# https://factory.pixiv.net/products/blanket
# -----------------------------
# image size      : 700 x 1000 mm (4430 x 6201 px recommended)
# circle size     : 30 mm
# circle count    : 23.3 (per 700mm)
# repeatable unit : 190 x 2 = 380 px
# -----------------------------

UNITSIZE=380
TEMPSIZE=$(( $UNITSIZE * 3 ))

# neutral variation
convert -density 1200 -resize ${TEMPSIZE}x${TEMPSIZE} -fuzz 10% -trim resources/mm46-3_neutral_unit.svg mm46_blanket_neutral_unit_temp.png
convert -density 1200 -resize ${UNITSIZE}x${UNITSIZE} mm46_blanket_neutral_unit_temp.png mm46_blanket_neutral_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_blanket_neutral_unit.png "}'` mm46_blanket_neutral_line.png
convert -append `seq 1 30 | awk '{printf "mm46_blanket_neutral_line.png "}'` mm46_blanket_neutral_rect.png
convert -density 1200 -rotate +30 mm46_blanket_neutral_rect.png mm46_blanket_neutral_rot.png
convert -density 1200 -gravity center -crop 4430x6201-2215-3101 mm46_blanket_neutral_rot.png images-dist/mm46_blanket_neutral.png
rm -f mm46_blanket_neutral_*.png

# chromatic variation
convert -density 1200 -resize ${TEMPSIZE}x${TEMPSIZE} -fuzz 10% -trim resources/mm46-3_chromatic_unit.svg mm46_blanket_chromatic_unit_temp.png
convert -density 1200 -resize ${UNITSIZE}x${UNITSIZE} mm46_blanket_chromatic_unit_temp.png mm46_blanket_chromatic_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_blanket_chromatic_unit.png "}'` mm46_blanket_chromatic_line.png
convert -append `seq 1 30 | awk '{printf "mm46_blanket_chromatic_line.png "}'` mm46_blanket_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_blanket_chromatic_rect.png mm46_blanket_chromatic_rot.png
convert -density 1200 -gravity center -crop 4430x6201-2215-3101 mm46_blanket_chromatic_rot.png images-dist/mm46_blanket_chromatic.png
rm -f mm46_blanket_chromatic_*.png
