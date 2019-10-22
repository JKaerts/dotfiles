# This script contains all racket packages I need for regular use

# BOOK_LANGS contains the languages needed to work through various
# teaching books. This list includes
#  - sicp: For working through the book "Structure and Interpretation
#    of Computer Programs" by Habelson and Sussman. It includes a complete
#    implementation of the language used throughout the book.
#  - beautiful-racket: For working through the book "Beautiful Racket"
#    by Butterick. This package is maintained by the author
$BOOK_LANGS="beautiful-racket sicp"

# HTML_UTILS contains some packages for dealing with HTML structures,
# mostly parsing and writing.
$HTML_UTILS="html-parsing html-writing"

# POLLEN_SUITE contains packages for the publishing system Pollen
# by Butterick. It contains
#  - pollen: The main package.
#  - pollen-tfl: A pollen sample project generating the website for
#    the book "Typography for Lawyers" by Butterick. This package
#    contains a lot of typical use cases for a Pollen project
#  - hyphenate: A separate hyphenation library for Pollen projects.
$POLLEN_SUITE="pollen pollen-tfl hyphenate"

raco pkg install $BOOK_LANGS $HTML_UTILS $POLLEN_SUITE
