$APP_VER = "23.4.21"

function version {
    Write-Output " Version $APP_VER `n"
}

function help {
    Write-Output "`n Markdown to Slide   version $APP_VER `n Copyright (c) 2022 Abhishek Kumar. All rights reserved."
    Write-Output "`n Options:"
    Write-Output "  -v --version    to see the current version of the app"
    Write-Output "  -h --help       to see the menu of command line options"
    Write-Output "`n Commands:"
    Write-Output "  spawn           to generate the html and pdf from markdown"
    Write-Output "`n Please choose accordingly. `n"
}

function process {
    $file = Resolve-Path $args[0]

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
}

if ($args.Count -eq 0) {
    Write-Output " Command is missing! `n"
} else {
    switch ($args[0]) {
        'spawn' {
            Write-Output " Spawn html and pdf from markdown"
            if ($args.Count -lt 2) {
                Write-Output " Markdown file-path is missing! `n"
            } else {
                process $args[1]
            }
        }
        '-v' { version }
        '--version' { version }
        '-h' { help }
        '--help' { help }
    }
}
exit 0