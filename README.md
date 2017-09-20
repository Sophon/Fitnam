# Fitnam
A script to find Viets at FIT.

Finding your compatriots in the school can be a duanting task, exhausting even the most durable stalkers!

But worry not! What kind of person would I be if I couldn't create a script to do that job for me, after all the love my parents have given me or after all the money tax-payers have poured into me. So here it is, money well spent!

## Usage

This script requires an `ypcat passwd` log file or one that has similar formatting, like:

    johnsmith:##johnsmith:10657:1001:John Smith student:/home/stud/johnsmith:/bin/bash
    janesmith:##janesmith:10666:1001:Jane Smith employee:/home/emp/janesmith:/bin/bash
    
And then we execute the script as following:

    ./fitnam {filename} {saveOutput y/n} {numberLines y/n}
    
- filename - the log file
- saveOutput - `1` or `y` to save file. The filename will be `viets.txt`. If `0` or `n`, the output will be your terminal.
- numberLines - `1` or `y` to save file. If `saveOutput` option was set as on, `viets.txt` will have numbered lines.
