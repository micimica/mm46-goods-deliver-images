#!/usr/bin/env sh

# clear file folder - A4 size
# https://factory.pixiv.net/products/clear_file_folder
# -----------------------------
# image size      : 210 x 297 mm (3072 x 4326 px recommended)
# circle size     : 11.5 mm
# circle count    : 18.26 (per 210mm)
# repeatable unit : 168 x 2 = 336 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 340x340 -crop 336x336+2+2 resources/mm46_neutral_unit.svg mm46_clear_file_folder_a4_neutral_unit.png
convert +append `seq 1 30 | awk '{printf "mm46_clear_file_folder_a4_neutral_unit.png "}'` mm46_clear_file_folder_a4_neutral_line.png
convert -append `seq 1 30 | awk '{printf "mm46_clear_file_folder_a4_neutral_line.png "}'` mm46_clear_file_folder_a4_neutral_rect.png
convert -density 1200 -rotate +30 mm46_clear_file_folder_a4_neutral_rect.png mm46_clear_file_folder_a4_neutral_rot.png
convert -density 1200 -crop 3072x4326+5350+4723 mm46_clear_file_folder_a4_neutral_rot.png images-dist/mm46_clear_file_folder_a4_neutral.png
rm -f mm46_clear_file_folder_a4_neutral_*.png

# chromatic variation
convert -density 1200 -resize 340x340 -crop 336x336+2+2 resources/mm46_chromatic_unit.svg mm46_clear_file_folder_a4_chromatic_unit.png
convert +append `seq 1 30 | awk '{printf "mm46_clear_file_folder_a4_chromatic_unit.png "}'` mm46_clear_file_folder_a4_chromatic_line.png
convert -append `seq 1 30 | awk '{printf "mm46_clear_file_folder_a4_chromatic_line.png "}'` mm46_clear_file_folder_a4_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_clear_file_folder_a4_chromatic_rect.png mm46_clear_file_folder_a4_chromatic_rot.png
convert -density 1200 -crop 3072x4326+5350+4723 mm46_clear_file_folder_a4_chromatic_rot.png images-dist/mm46_clear_file_folder_a4_chromatic.png
rm -f mm46_clear_file_folder_a4_chromatic_*.png
