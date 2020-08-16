# mm46 goods images generator

This is a generator for images to make "Mici-mica version 46" goods by pixivFACTORY.

- The Amulet "Mici-mica" for Energy Works
  - https://micimica-distribution.tumblr.com/
- pixivFACTORY
  - https://factory.pixiv.net/
- micimica shop
  - https://micimica.booth.pm/

## Requirement

- docker
  - https://docs.docker.com/docker-for-windows/
  - https://docs.docker.com/docker-for-mac/

## Usage

### Prepare

```sh
# If you use Docker Toolbox for Windows, you can mount the "c:\Users\" subdirectories to docker by default. 
cd /c/Users/$USERNAME/

git clone https://github.com/micimica/mm46-goods-deliver-images.git
cd mm46-goods-deliver-images
docker build -t micimica/imagemagick:latest .
```

### Generate
```sh
docker run --rm -it --name micimica-imagemagick -v `pwd`:/mm46-goods-deliver-images micimica/imagemagick:latest

cd /mm46-goods-deliver-images

chmod u+x *.sh

./factory_blanket.sh
./factory_clear_file_folder_a4.sh
./factory_leather_card_case.sh
./factory_mugcup.sh
./factory_poster_b1.sh
./factory_poster_b1.sh
./factory_poster_b2.sh
./factory_towel_l.sh

chmod 777 images-dist/*.png
exit
```

### Clean Up

```sh
docker image rm -f $(docker image ls -q -f reference=micimica/imagemagick:latest)
# docker image rm -f $(docker image ls -q -f reference=alpine:latest)
# docker container prune -f
```

## Reference of Goods / Image
| Goods Variation | Image File | Example |
|:---|:---|:---|
| [Poster - B1 size](https://factory.pixiv.net/products/fast_poster) | images-dist/mm46_poster_b1_neutral.png<br>images-dist/mm46_poster_b1_chromatic.png | [Neutral](https://micimica.booth.pm/items/2286268)<br>[Chromatic](https://micimica.booth.pm/items/2286272) |
| [Poster - B2 size](https://factory.pixiv.net/products/fast_poster) | images-dist/mm46_poster_b2_neutral.png<br>images-dist/mm46_poster_b2_chromatic.png | [Neutral](https://micimica.booth.pm/items/2286268)<br>[Chromatic](https://micimica.booth.pm/items/2286272) |
| [Clear File Folder - A4 size](https://factory.pixiv.net/products/clear_file_folder) | images-dist/mm46_clear_file_folder_a4_neutral.png<br>images-dist/mm46_clear_file_folder_a4_chromatic.png | [Neutral](https://micimica.booth.pm/items/2284876)<br>[Chromatic](https://micimica.booth.pm/items/2284877) |
| [Can Badge - Circle 25mm](https://factory.pixiv.net/products/can_badge) | images-manually/mm46_can_badge_25mm_neutral_yang.png<br>images-manually/mm46_can_badge_25mm_neutral_ying.png<br>images-manually/mm46_can_badge_25mm_chromatic_yang.png<br>images-manually/mm46_can_badge_25mm_chromatic_ying.png | [Neutral](https://micimica.booth.pm/items/2239427)<br>[Chromatic](https://micimica.booth.pm/items/2282756) |
| [Pin Badge](https://factory.pixiv.net/products/pin_badge) | images-manually/mm46_pin_badge_neutral_yang.png<br>images-manually/mm46_pin_badge_neutral_ying.png<br>images-manually/mm46_pin_badge_chromatic_yang.png<br>images-manually/mm46_pin_badge_chromatic_ying.png | [Neutral](https://micimica.booth.pm/items/2282785)<br>[Chromatic](https://micimica.booth.pm/items/2282799) |
| [Mug Cup](https://factory.pixiv.net/products/standard_mug) | images-dist/mm46_mugcup_neutral.png<br>images-dist/mm46_mugcup_chromatic.png | [Neutral](https://micimica.booth.pm/items/2284961)<br>[Chromatic](https://micimica.booth.pm/items/2284966) |
| [Towel - Large size](https://factory.pixiv.net/products/towel) | images-dist/mm46_towel_l_neutral.png<br>images-dist/mm46_towel_l_chromatic.png | [Neutral](https://micimica.booth.pm/items/2285137)<br>[Chromatic](https://micimica.booth.pm/items/2285271) |
| [Blanket](https://factory.pixiv.net/products/blanket) | images-dist/mm46_blanket_neutral.png<br>images-dist/mm46_blanket_chromatic.png | - |
| [Leather Card Case](https://factory.pixiv.net/products/leather_card_case) | images-dist/mm46_leather_card_case_neutral.png<br>images-dist/mm46_leather_card_case_chromatic.png | - |
