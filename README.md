# Convert OCR pdf files to searchable pdf files

pdfsandwich required: `apt-get install pdfsandwich`

Usage: Copy/Move this script to folder with OCR pdfs and run  in terminal: 

```bash
PathToScript/convert.sh
```

It will create a folder **Converted** with searchable converted `.pdf` files.

## Languages

```bash
tesseract --list-langs
```

If you need a specific language (like Hebrew), download `tesseract` lang files for that language:

```bash
sudo apt-get install tesseract-ocr-heb
```

Pass language as parameter. Use plus for multiple languages (default is English):

```bash
PathToScript/convert.sh deu+heb
```

## Troublesoot

If it happens to throw an error, try commenting the policy map in `/etc/ImageMagick-6/policy.xml`. If `tesseract-ocr` is version **4** or higher, use `pdfsandwich` version **0.1.7** or higher

Number of threads set to 1 due to issues with tesseract getting stuck when leaving default settings.


# Alternative - gImageReader

Graphical GTK+ front-end for `tesseract-ocr` for converting images and pdf-s to searchable docs.

```bash
sudo apt-get install gimagereader
```

Import file to convert, select one page or multiple pages, and save output. It saves text into `html` file. It might take a long time to scan

