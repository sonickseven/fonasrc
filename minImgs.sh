#!/usr/bin/env bash
maxWidth=250
for img in *.jpg ; do
	widthImg=$(identify -format %w "$img")
	if [ "$widthImg" -gt "$maxWidth" ] ; then
		$(convert $img -resize "250x250!" -quality 76 $img)
	else
		echo 'no se hace nada'
	fi
done