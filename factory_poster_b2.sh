#!/usr/bin/env sh

# Poster - B2 size
# https://factory.pixiv.net/products/fast_poster
# -----------------------------
# image size      : 734 x 521 mm (10115 x 7180 px recommended)
# circle size     : 6.80 mm
# circle count    : 108 (per 734mm)
# repeatable unit : 94 x 2 = 188 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 192x192 -crop 188x188+2+2 resources/mm46_neutral_unit.svg mm46_poster_b1_neutral_unit.png
convert +append `seq 1 54 | awk '{printf "mm46_poster_b1_neutral_unit.png "}'` mm46_poster_b1_neutral_line.png
convert -append `seq 1 77 | awk '{printf "mm46_poster_b1_neutral_line.png "}'` mm46_poster_b1_neutral_rect.png
convert -density 1200 -resize 10115x14423 mm46_poster_b1_neutral_rect.png images-dist/mm46_poster_b1_neutral.png
rm -f mm46_poster_b1_neutral_*.png

# chromatic variation
convert -density 1200 -resize 192x192 -crop 188x188+2+2 resources/mm46_chromatic_unit.svg mm46_poster_b1_chromatic_unit.png
convert +append `seq 1 54 | awk '{printf "mm46_poster_b1_chromatic_unit.png "}'` mm46_poster_b1_chromatic_line.png
convert -append `seq 1 77 | awk '{printf "mm46_poster_b1_chromatic_line.png "}'` mm46_poster_b1_chromatic_rect.png
convert -density 1200 -resize 10115x14423 mm46_poster_b1_chromatic_rect.png images-dist/mm46_poster_b1_chromatic.png
rm -f mm46_poster_b1_chromatic_*.png