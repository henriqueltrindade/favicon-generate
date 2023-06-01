#! /usr/local/bin/bash
 
if [ $# -eq 0 ]
	then
		echo "Usage: "$0" input_favicon.svg" 
		exit 1;
fi
 
SVG_SOURCE="$(echo $1)"
OUTPUT_DIR="$(echo `pwd`)"/output
 
# create the output directory and don't output error if it already exists
mkdir ${OUTPUT_DIR} 2> /dev/null
 
# generate optimized SVG
scour ${SVG_SOURCE} "${OUTPUT_DIR}"/icon.svg --enable-viewboxing --enable-id-stripping   --enable-comment-stripping --shorten-ids --indent=none
 
# generate PNGs
inkscape -h 32 ${SVG_SOURCE} --export-filename "${OUTPUT_DIR}""/favicon_unoptimized.png"
inkscape -h 180 ${SVG_SOURCE} --export-filename "${OUTPUT_DIR}""/apple-touch-icon_unoptimized.png"
inkscape -h 192 ${SVG_SOURCE} --export-filename "${OUTPUT_DIR}""/icon-192_unoptimized.png"
inkscape -h 512 ${SVG_SOURCE} --export-filename "${OUTPUT_DIR}""/icon-512_unoptimized.png"
 
# optimize PNGs
optipng -o7 -out "${OUTPUT_DIR}"/favicon.ico "${OUTPUT_DIR}""/favicon_unoptimized.png"
optipng -o7 -out "${OUTPUT_DIR}""/apple-touch-icon.png" "${OUTPUT_DIR}""/apple-touch-icon_unoptimized.png"
optipng -o7 -out "${OUTPUT_DIR}""/icon-192.png" "${OUTPUT_DIR}""/icon-192_unoptimized.png"
optipng -o7 -out "${OUTPUT_DIR}""/icon-512.png" "${OUTPUT_DIR}""/icon-512_unoptimized.png"
 
# clean up temporary files
rm "${OUTPUT_DIR}""/favicon_unoptimized.png"
rm  "${OUTPUT_DIR}""/apple-touch-icon_unoptimized.png"
rm "${OUTPUT_DIR}""/icon-192_unoptimized.png"
rm "${OUTPUT_DIR}""/icon-512_unoptimized.png"
