see [ASON Tokenizer](https://guitarvydas.github.io/2021/04/10/ASON-Notation-Pipeline.html) for more info 
<br>tokens:

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
<br>
layer dates:<br>
layer strings and binary:<br>
layer negative numbers:<br>
layer words:<br>
e! id<br>
layer expressions:<br>
G asonObject		begin Group ason object<br>
G asonArray			begin Group ason array <br>
G asonExpression	begin Group ason expression <br>
G nil				begin Group <nothing> <br>
G defineWord		begin Group define word <br>
g					end Group <br>
layer lisp:
