# gen-excel-to-slide
Generate excel column to slide via marp

## Introduction
It can generate marp slide from excel column by copying the content of the calculated column in the markdown file then execute the worker over it to generate pdf and html based slides out of that markdown content.

## Prerequisite
- [Marp CLI](https://github.com/marp-team/marp-cli) → based on node.js
- [replace-pattern](https://github.com/isurfer21/replace-pattern) → based on deno

## Getting started
1. Open the `lab/` folder, copy the formula from given excelsheet, and then paste it into the target excelsheet.
2. Copy the the content of whole column on which formula was applied and paste it to markdown file.
3. Run the `worker.sh`/`worker.ps1` shell script to sanitize the markdown file and generate html/pdf file output.

## Installation
On macOS or Linux, copy the `m2s.sh` script and put it in the global `bin/` directory; on Windows, do the same with `m2s.ps1`. This will install the application for system-wide access.

After installation, gloabl `m2s.sh`/`m2s.ps1` script can be used as commands instead of local `worker.sh`/`worker.ps1` shell scripts. 