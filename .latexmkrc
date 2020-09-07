#!/usr/bin/env perl

# output directory
$out_dir          = "build/";

# latex commands
$pdflatex = "find . -type f -name '*.tex' -print0 | xargs -0 sed -i -e 's/、/，/g' -e 's/。/．/g' && latexindent -w -s -c=$out_dir -y='onlyOneBackUp:1' *.tex && lualatex --synctex=1 --interaction=nonstopmode --halt-on-error %O %S";

$bibtex           = 'pbibtex -kanji=utf8';
$max_repeat       = 5;

# pdf mode (0: none, 1: pdflatex, 2: ps2pdf, 3: dvipdfmx)
$pdf_mode         = 1;

## viewer settings
$pvc_view_file_via_temporary = 0;
$pdf_previewer = ":"; # do nothing
