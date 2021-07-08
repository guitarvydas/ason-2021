tokens:

bottom layer
```
C uri			comment
S uri			string
I [0-9]+		integer
H [A-F0-9]+		hex
N uri			ident
W uri			whitespace (space, tab, newline)
M uri			named month [jJaAnN[uUaArRyY]] etc. 
				 september is SEP/SEPT/SEPTEMBER (case doesn't matter)
U				unknown

```
bottom layer, delimiters:
```
D{ {
D} }
D[ [
D] ]
D( (
D) )
D/ /
D. .
D: :
D@ @
D# D-
D+ +
D$ $
D< <
D> >
```

layer kill whitespace:
(no new tokens, W tokens removed from stream)

layer numerical:
layer dates:
layer strings and binary:
layer negative numbers:
layer words:
e! id
layer expressions:
G asonObject		begin Group ason object
G asonArray			begin Group ason array
G asonExpression	begin Group ason expression
G nil				begin Group <nothing>
G defineWord		begin Group define word
g					end Group
layer lisp:
