#!/usr/bin/env bash
maxWidth=250
for img in *.jpg ; do
	widthImg=$(identify -format %w "$img")
	if [ "$widthImg" -gt "$maxWidth" ] ; then
		echo "cambiar $img"
		$(convert $img -resize "250x250!" -quality 76 $img)
	fi
done
$(git add .)
nowGit=$(date +"%Y-%m-%d")
$(git commit -m "imagenes de $nowGit")

$(git push origin master)

