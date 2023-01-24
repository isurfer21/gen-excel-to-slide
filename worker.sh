#!/usr/bin/env zsh

file=slides.md

echo 'Sanitize body'
replace-pattern '\"\n\"' ' ' $file

echo 'Sanitize footer'
# replace-pattern '---\"' '---' $file
replace-pattern '---\"' '---

# The End
' $file

echo 'Sanitize header'
# replace-pattern '\"\n\n#' '#' $file 
replace-pattern '\"\n\n#' '# Sample Cards

---

#' $file 

echo 'Generate slides'
marp $file
marp --pdf $file

exit 0
