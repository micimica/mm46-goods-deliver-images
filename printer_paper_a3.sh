#!/usr/bin/env sh

# Common Use - A3 size  (usable for A2 - A4)
# -----------------------------
# image size      : 420 x 297 mm (5787 x 4093 px recommended)  A3
# circle size     : 3.89 mm
# circle count    : 108 (per 420mm)
# repeatable unit : 53.6 x 2 = 107 px
# -----------------------------

UNITSIZE=107
TEMPSIZE=$(( $UNITSIZE * 3 ))

# neutral variation
convert -density 1200 -resize ${TEMPSIZE}x${TEMPSIZE} -fuzz 10% -trim resources/mm46-3_neutral_unit.svg mm46_a3_neutral_unit_temp.png
convert -density 1200 -resize ${UNITSIZE}x${UNITSIZE} mm46_a3_neutral_unit_temp.png mm46_a3_neutral_unit.png
convert -append `seq 1 40 | awk '{printf "mm46_a3_neutral_unit.png "}'` mm46_a3_neutral_line.png
convert +append `seq 1 56 | awk '{printf "mm46_a3_neutral_line.png "}'` mm46_a3_neutral_rect.png
convert -density 1200 -crop 5787x4093+105+93 mm46_a3_neutral_rect.png images-dist/mm46_a3_neutral.png
rm -f mm46_a3_neutral_*.png

# chromatic variation
convert -density 1200 -resize ${TEMPSIZE}x${TEMPSIZE} -fuzz 10% -trim resources/mm46-3_chromatic_unit.svg mm46_a3_chromatic_unit_temp.png
convert -density 1200 -resize ${UNITSIZE}x${UNITSIZE} mm46_a3_chromatic_unit_temp.png mm46_a3_chromatic_unit.png
convert -append `seq 1 40 | awk '{printf "mm46_a3_chromatic_unit.png "}'` mm46_a3_chromatic_line.png
convert +append `seq 1 56 | awk '{printf "mm46_a3_chromatic_line.png "}'` mm46_a3_chromatic_rect.png
convert -density 1200 -crop 5787x4093+105+93 mm46_a3_chromatic_rect.png images-dist/mm46_a3_chromatic.png
rm -f mm46_a3_chromatic_*.png
