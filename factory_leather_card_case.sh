#!/usr/bin/env sh

# leather card case
# https://factory.pixiv.net/products/leather_card_case
# -----------------------------
# image size      : 162 x 102 mm (1914 x 1276 px recommended)
# circle size     : 5 mm
# circle count    : 20.4 (per 102mm)
# repeatable unit : 62.5 x 2 = 125 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 129x129 -crop 125x125+2+2 resources/mm46_neutral_unit.svg mm46_leather_card_case_neutral_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_leather_card_case_neutral_unit.png "}'` mm46_leather_card_case_neutral_line.png
convert -append `seq 1 25 | awk '{printf "mm46_leather_card_case_neutral_line.png "}'` mm46_leather_card_case_neutral_rect.png
convert -density 1200 -rotate +30 mm46_leather_card_case_neutral_rect.png mm46_leather_card_case_neutral_rot.png
convert -density 1200 -gravity center -crop 1914x1276-957-638 mm46_leather_card_case_neutral_rot.png images-dist/mm46_leather_card_case_neutral.png
rm -f mm46_leather_card_case_neutral_*.png

# chromatic variation
convert -density 1200 -resize 129x129 -crop 125x125+2+2 resources/mm46_chromatic_unit.svg mm46_leather_card_case_chromatic_unit.png
convert +append `seq 1 25 | awk '{printf "mm46_leather_card_case_chromatic_unit.png "}'` mm46_leather_card_case_chromatic_line.png
convert -append `seq 1 25 | awk '{printf "mm46_leather_card_case_chromatic_line.png "}'` mm46_leather_card_case_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_leather_card_case_chromatic_rect.png mm46_leather_card_case_chromatic_rot.png
convert -density 1200 -gravity center -crop 1914x1276-957-638 mm46_leather_card_case_chromatic_rot.png images-dist/mm46_leather_card_case_chromatic.png
rm -f mm46_leather_card_case_chromatic_*.png
