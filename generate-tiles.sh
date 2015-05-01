# If you have ImageMagick installed
for colour in $(cat colours_list.txt);
do convert -size 256x256 xc:$colour tiles/$(echo $colour| tr '[:upper:]' '[:lower:]').png;
done
