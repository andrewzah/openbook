build:
  lilypond \
    -dpoint-and-click \
    -ddelete-intermediate-files \
    --include=./includes/ \
    --include=./songs/ \
    --pdf \
    book.ly

v:
  mupdf book.pdf
