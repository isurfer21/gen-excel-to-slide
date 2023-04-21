$file = "slides.md"

Write-Output 'Sanitize body'
replace-pattern '\"\n\"' ' ' $file

Write-Output 'Sanitize footer'
# replace-pattern '---\"' '---' $file
replace-pattern '---\"' '---

# The End
' $file

Write-Output 'Sanitize header'
# replace-pattern '\"\n\n#' '#' $file 
replace-pattern '\"\n\n#' '# Sample Cards

---

#' $file 

Write-Output 'Generate slides'
marp $file
marp --pdf $file

exit 0