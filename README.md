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
cd /c/Users/$USERNAME/mm46-goods-deliver-images

docker run --rm -it --name micimica-imagemagick -v `pwd`:/mm46-goods-deliver-images micimica/imagemagick:latest

cd /mm46-goods-deliver-images

chmod u+x *.sh

./factory_blanket.sh
./factory_clear_file_folder_a4.sh
./factory_leather_card_case.sh
./factory_mugcup.sh
./factory_poster_b1.sh
./factory_poster_b2.sh
./factory_towel_l.sh

./printer_paper_a3.sh

chmod 777 images-dist/*.png
exit

docker stop micimica-imagemagick
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
| [Poster - B1 size](https://factory.pixiv.net/products/fast_poster) | images-dist/mm46_poster_b1.png | [link](https://micimica.booth.pm/items/2448419) |
| [Poster - B2 size](https://factory.pixiv.net/products/fast_poster) | images-dist/mm46_poster_b2.png | [link](https://micimica.booth.pm/items/2448419) |
| [Clear File Folder - A4 size](https://factory.pixiv.net/products/clear_file_folder) |  | |
| [Can Badge - Circle 25mm](https://factory.pixiv.net/products/can_badge) |  | |
| [Pin Badge](https://factory.pixiv.net/products/pin_badge) |  | |
| [Mug Cup](https://factory.pixiv.net/products/standard_mug) |  | |
| [Towel - Large size](https://factory.pixiv.net/products/towel) |  | |
| [Blanket](https://factory.pixiv.net/products/blanket) |  | |
| [Leather Card Case](https://factory.pixiv.net/products/leather_card_case) |  | |
| [Paper - A2-A4 size<br>(with home printer)](https://factory.pixiv.net/products/blanket) | images-dist/mm46_a3.png | |

## License

### Source Code
MIT License

### Image File
Public Domain (CC0)
