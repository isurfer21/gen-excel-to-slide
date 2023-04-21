#!/usr/bin/env zsh

APP_VER="23.4.21"

version() {
    echo " Version $APP_VER \n"
}

help() {
    echo "\n Markdown to Slide   version $APP_VER \n Copyright (c) 2022 Abhishek Kumar. All rights reserved."
    echo "\n Options:"
    echo "  -v --version    to see the current version of the app"
    echo "  -h --help       to see the menu of command line options"
    echo "\n Commands:"
    echo "  spawn           to generate the html and pdf from markdown"
    echo "\n Please choose accordingly. \n"
}

process() {
    file=$(realpath $1)

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
}

if [[ "$1" == "" ]]; then 
    echo " Command is missing! \n"
else 
    case "$1" in
    'spawn')
        echo " Spawn html and pdf from markdown"
        if [[ "$2" == "" ]]; then 
		    echo " Markdown file-path is missing! \n"
		else
            process $2
		fi
    ;;
    '-v')
        version 
    ;;
    '--version')
        version
    ;;
    '-h')
        help
    ;;
    '--help')
        help
    ;;
    esac
fi
exit 0