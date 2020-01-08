#!/bin/bash
# Convert OCR pdf files to searchable pdf files
# Usage: Copy/Move this script to folder with OCR pdfs and run 
# PathToScript/convert.sh in terminal 
# pdfsandwich required (apt-get install pdfsandwich)

LANG=$1
LANG=${LANG:-eng}

for filename in ./*.pdf; do
	pdfsandwich -lang "$LANG" "$filename"
done

#
# Move converted files to newly created folder Converted
#
mkdir Converted
mv *_ocr.pdf Converted/

