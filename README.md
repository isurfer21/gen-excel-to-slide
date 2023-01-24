# gen-excel-to-slide
Generate excel column to slide via marp

## Introduction
It can generate marp slide from excel column by copying the content of the calculated column in the markdown file then execute the worker over it to generate pdf and html based slides out of that markdown content.

## Prerequisite
- [Marp CLI](https://github.com/marp-team/marp-cli) → based on node.js
- [replace-pattern](https://github.com/isurfer21/replace-pattern) → based on deno

## Getting started
1. Copy the formula from given excelsheet and paste into the target excelsheet.
2. Copy the column on which formula was applied and paste to markdown file.
3. Run the worker shell script to sanitize the markdown file and generate html/pdf file output.
