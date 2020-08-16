#!/usr/bin/env sh

# Poster - B1 size
# https://factory.pixiv.net/products/fast_poster
# -----------------------------
# image size      : 521 x 734 mm (7180 x 10115 px recommended)
# circle size     : 6.80 mm
# circle count    : 108 (per 734mm)
# repeatable unit : 94 x 2 = 188 px
# -----------------------------

# neutral variation
convert -density 1200 -resize 192x192 -crop 188x188+2+2 resources/mm46_neutral_unit.svg mm46_poster_b2_neutral_unit.png
convert -append `seq 1 54 | awk '{printf "mm46_poster_b2_neutral_unit.png "}'` mm46_poster_b2_neutral_line.png
convert +append `seq 1 39 | awk '{printf "mm46_poster_b2_neutral_line.png "}'` mm46_poster_b2_neutral_rect.png
convert -density 1200 -resize 7305x10115 mm46_poster_b2_neutral_rect.png images-dist/mm46_poster_b2_neutral.png
rm -f mm46_poster_b2_neutral_*.png

# chromatic variation
convert -density 1200 -resize 192x192 -crop 188x188+2+2 resources/mm46_chromatic_unit.svg mm46_poster_b2_chromatic_unit.png
convert -append `seq 1 54 | awk '{printf "mm46_poster_b2_chromatic_unit.png "}'` mm46_poster_b2_chromatic_line.png
convert +append `seq 1 39 | awk '{printf "mm46_poster_b2_chromatic_line.png "}'` mm46_poster_b2_chromatic_rect.png
convert -density 1200 -resize 7305x10115 mm46_poster_b2_chromatic_rect.png images-dist/mm46_poster_b2_chromatic.png
rm -f mm46_poster_b2_chromatic_*.png
