# Tileserver-colours project

This project is directly inspired by the [plaintiles project](https://github.com/timwaters/plaintiles) from [Tim Waters](http://twitter.com/tim_waters) coded with Ruby.

The project goal is the same as the original: serve plain coloured tiles using [OpenStreetMap tiles scheme]() but contrary to original project, we eliminated code and only rely on the Nginx web server configuration and static tiles images.

The directory `tiles` was populated running `generate-tiles.sh` that use colours supported by the command line utility `convert` from `ImageMagick`, listed at http://www.imagemagick.org/script/color.php#color_names.

If you need to serve any tiles, you can also create your own and serve by example image tiles with patterns. You will just need to respect the 256px x 256px image size and filename convention to only use lower letters and numbers (or change the regex in the Nginx configuration on your own)

The core part is the configuration in the [nginx-colours.conf](https://github.com/webgeodatavore/tileserver-colours/blob/master/nginx-colours.conf) file that change urls. You need to reuse it in your own Nginx config file.

By default, requested tiles will be something like http://yoururl/tiles/{colour}/1/1/1.png where {colour} is the filename without png extension.

For any requests, open [an issue](https://github.com/webgeodatavore/tileserver-colours/issues) or feel free to contact us at contact(at)webgeodatavore.com or on [Twitter](http://twitter.com/thomasg77)