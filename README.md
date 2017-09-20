# Fitnam
A script to find Viets at FIT.

Finding your compatriots in the school can be a duanting task, exhausting even the most durable stalkers!

But worry not! What kind of person would I be if I couldn't create a script to do that job for me, after all the love my parents have given me or after all the money tax-payers have poured into me. So here it is, money well spent!

## Usage

This script requires alog file or one that has similar formatting, like:

    John Smith
    Jane Smith
    Jack Bauer
    Reacher Jack

Order of family/given name doesn't matter.
    
And then we execute the script as following:

    ./fitnam {filename} (optional){saveOutput}
    
- `filename` - the log file
- `saveOutput` - `y` to save file. The filename will be `viets.txt`. Otherwise, the output will be your terminal.

Example:

    ./fitnam students.txt y
    
## Problems

As of now, there could be false positives, for example the Dutch sometimes are named `Van`. The resulted output still should be checked for those inaccuracies.
