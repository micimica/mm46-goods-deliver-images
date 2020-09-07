#!/usr/bin/env sh

# clear file folder - A4 size
# https://factory.pixiv.net/products/clear_file_folder
# -----------------------------
# image size      : 210 x 297 mm (3072 x 4326 px recommended)
# circle size     : 5 mm
# circle count    : 42 (per 210mm)
# repeatable unit : 73 x 2 = 146 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 150x150 -crop 146x146+2+2 resources/mm46_neutral_unit.svg mm46_clear_file_folder_a4_neutral_unit.png
convert +append `seq 1 45 | awk '{printf "mm46_clear_file_folder_a4_neutral_unit.png "}'` mm46_clear_file_folder_a4_neutral_line.png
convert -append `seq 1 45 | awk '{printf "mm46_clear_file_folder_a4_neutral_line.png "}'` mm46_clear_file_folder_a4_neutral_rect.png
convert -density 1200 -rotate +30 mm46_clear_file_folder_a4_neutral_rect.png mm46_clear_file_folder_a4_neutral_rot.png
convert -density 1200 -gravity center -crop 3072x4326-1536-2163 mm46_clear_file_folder_a4_neutral_rot.png images-dist/mm46_clear_file_folder_a4_neutral.png
rm -f mm46_clear_file_folder_a4_neutral_*.png

# chromatic variation
convert -density 1200 -resize 150x150 -crop 146x146+2+2 resources/mm46_chromatic_unit.svg mm46_clear_file_folder_a4_chromatic_unit.png
convert +append `seq 1 45 | awk '{printf "mm46_clear_file_folder_a4_chromatic_unit.png "}'` mm46_clear_file_folder_a4_chromatic_line.png
convert -append `seq 1 45 | awk '{printf "mm46_clear_file_folder_a4_chromatic_line.png "}'` mm46_clear_file_folder_a4_chromatic_rect.png
convert -density 1200 -rotate +30 mm46_clear_file_folder_a4_chromatic_rect.png mm46_clear_file_folder_a4_chromatic_rot.png
convert -density 1200 -gravity center -crop 3072x4326-1536-2163 mm46_clear_file_folder_a4_chromatic_rot.png images-dist/mm46_clear_file_folder_a4_chromatic.png
rm -f mm46_clear_file_folder_a4_chromatic_*.png
