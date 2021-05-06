# Regular Expressions

## Cheat Sheet

</br>

### Character Classes

.       - Any Character Except New Line

\d      - Digit (0-9)

\D      - Not a Digit (0-9)

\w      - Word Character (a-z, A-Z, 0-9, _)

\W      - Not a Word Character

\s      - Whitespace (space, tab, newline)

\S      - Not Whitespace (space, tab, newline)

</br>

### Anchors

\b      - Word Boundary

\B      - Not a Word Boundary

^       - Beginning of a String

$       - End of a String

</br>

### Groups and Ranges


[]      - Matches Characters in brackets

[^ ]    - Matches Characters NOT in brackets

|       - Either Or

( )     - Group

</br>

### Quantifiers

\*       - 0 or More

\+       - 1 or More

?       - 0 or One

{3}     - Exact Number

{3,5}   - Range of Numbers (Minimum, Maximum)

{3,}    - Three or more

</br>

### Examples

Matching IPv4:

`^((\d{1,3}[.]){3}\d{1,3})$`

Matching emails:

`^([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+)$`

Matching phone numbers:

`^(\(\d{3}\)\s\d{3}-\d{4})$`

Matching URLs:

`^https?://(www\.)?(\w+)(\.\w+)$`

Matching names with personal titles:

`^M(r|rs|s|iss)\.?\s([A-Z]\w*)$`