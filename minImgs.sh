#!/usr/bin/env bash

for i in *.jpg ; do

	# widthImg=$(identify -format %w $i)
	# widthImg=$(identify $i)
	
	echo "$i"



	# if [ $widthImg > 250]; then
	# 	convert "$i[250x>]" "tb_$i"
	# fi
done




#ffmpeg -i "$i" -acodec libmp3lame $(basename "${i/.aac}").mp3