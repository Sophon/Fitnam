# Fitnam
A script to find Viets.

Finding your compatriots in the school can be a daunting task, exhausting even for the most durable of stalkers!

But worry not! What kind of person would I be if I couldn't create a script to do that job for me, after all the love my parents have given me or after all the money tax-payers have poured into me. So here it is, money well spent!

This script finds Vietnamese people from a file using the 25 most common Vietnamese family names. Some family names could also be given names but also be second family name. Also, certain countries have -ova suffix in the family name - all accounted for. 

## Usage

This script requires a log file or one that has similar formatting, like:

    John Smith
    Ngo Ha Mi
    Jack Bauer
    Reacher Jack

Order of family/given name doesn't matter.
    
And then we execute the script as following:

    ./fitnam.sh {filename} (optional){saveOutput}
    
- `filename` - the log file
- `saveOutput` - `y` to save file. The filename will be `viets.txt`. Otherwise, the output will be your terminal.

Example:

    ./fitnam students.txt y
    
## Problems

As of now, there could be false positives, for example the Dutch sometimes are named `Van`. The resulted output still should be checked for those inaccuracies.
