# Tokens Produced by the Pipeline #


| token kind             | example                  | bytes                        |
| ---------------------- | ------------------------ | ---------------------------- |
| string                 | "abc"                    | S "abc"                      |
| delimiter              |                          |                              |
|                        | [                        | D[  [                        |
|                        | ]                        | D]  ]                        |
|                        | {                        | D{  {                        |
|                        | }                        | D}  }                        |
|                        | (                        | D(  (                        |
|                        | )                        | D)  )                        |
|                        | /                        | D/  /                        |
|                        | .                        | D.  .                        |
|                        | :                        | D:  :                        |
|                        | @                        | D@  @                        |
|                        | #                        | D#  #                        |
|                        | -                        | D-  -                        |
|                        | +                        | D+  +                        |
|                        | $                        | D$  $                        |
|                        | <                        | D<  <                        |
|                        | >                        | D>  >                        |
| integer                | 1234                     | I 1234                       |
| whitespace             |                          | W %20%20%20                  |
| namedMonth             |                          |                              |
|                        | january                  | M january                    |
|                        | jan                      | M january                    |
|                        | february                 | M february                   |
|                        | feb                      | M february                   |
|                        | march                    | M march                      |
|                        | mar                      | M march                      |
|                        | april                    | M april                      |
|                        | apr                      | M apr                        |
|                        | may                      | M may                        |
|                        | june                     | M june                       |
|                        | jun                      | M jun                        |
|                        | july                     | M july                       |
|                        | jul                      | M jul                        |
|                        | august                   | M august                     |
|                        | aug                      | M aug                        |
|                        | september                | M september                  |
|                        | sept                     | M september                  |
|                        | sep                      | M september                  |
|                        | october                  | M october                    |
|                        | oct                      | M october                    |
|                        | november                 | M november                   |
|                        | nov                      | M november                   |
|                        | december                 | M december                   |
|                        | dec                      | M december                   |
| hex                    | #2AF3                    | H 2AF3                       |
| unknown                | ???                      | U                            |
| ident                  | xyz                      | N xyz                        |
| pair                   | 123x456                  | bP 123 456                   |
| range                  | 123..456                 | bR 123 456                   |
| tuple                  | 123.456.789              | bT 123 456 789               |
| currency               | $12.34                   | b$ 12 34                     |
| float                  | 123.456                  | bF 123 456                   |
| eufloat                | 123,456                  | bE 123 456                   |
| yyyymmddhhmmsstz       | 2012-04-13-09:52:34-5:00 | cZ 2012 04 13 09 52 34 -5 00 |
|                        | 2012-04-13-09:52:34+5:00 | cZ 2012 04 13 09 52 34 5 00  |
| yyyymmddhhmmss         | 2012-04-13-09:52:34      | cY 2012 04 13 09 52 34       |
| yyyymmdd               | 2012-04-13               | cD 2012 04 13                |
| mmdd                   | 04-13                    | cP 04 13                     |
| hhmmss                 | 09:52:34                 | cH 09 52 34                  |
| binary base 64         | ##2AF3                   | dB 2AF3                      |
| email                  | paultarvydas@gmail.com   | d@ paultarvydas gmail%2Ecom  |
| hypertext tag          | <abc>                    | d< abc                       |
| path                   | %abc                     | d% abc                       |
| url                    | abc://                   | dU abc                       |
| set-word               | abc:                     | e! abc                       |
| word                   | abc                      | e? abc                       |
| get-word               | :abc                     | e: abc                       |
| selector               | .abc                     | e. abc                       |
| refinement             | /abc                     | e/ abc                       |
| symbol                 | 'abc                     | e' abc                       |
| literal                | @abc                     | e@ abc                       |
| path refinement        | abc/def                  | eP abc def                   |
| select field           | abc.def                  | eF abc def                   |
| set field              | abc.def:                 | eS abc def                   |
| get unevaled field     | :abc.def                 | eU abc def                   |
| array block            | [ ... ]                  |                              |
| array block begin      | [                        | f[                           |
| array block end        | ]                        | f]                           |
| object block           | { ... }                  |                              |
| object block begin     | {                        | f{                           |
| object block end       | }                        | f}                           |
| expression block       | ( ... )                  |                              |
| expression block begin | (                        | f(                           |
| expression block end   | )                        | f)                           |
