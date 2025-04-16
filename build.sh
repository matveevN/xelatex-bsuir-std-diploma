#!/usr/bin/env bash

set -e

makelatex() {
    xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -recorder -output-directory="../Out" "./diploma_main.tex"
}

makepdf() {
    xdvipdfmx -E -o "../Out/diploma_main.pdf"  "../Out/diploma_main.xdv"
}

set -x

cd Tex
makelatex
biber -output-directory="../Out" "./diploma_main"
makelatex
makepdf
