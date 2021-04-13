# Tokens Produced by the Pipeline #


 | token kind  | example | bytes |
 |-------------|---------|-------|
 | string | "abc" | S text |
 | delimiter |  |  |
 | | [ | D[  [|
 | | ] | D]  ]|
 | | { | D{  {|
 | | } | D}  }|
 | | ( | D(  (|
 | | ) | D)  )|
 | | / | D/  /|
 | | . | D.  .|
 | | : | D:  :|
 | | @ | D@  @|
 | | # | D#  #|
 | | - | D-  -|
 | | $ | D$  $|
 | | < | D<  <|
 | | > | D>  >|
 | integer | 1234 | I 1234 |
 | whitespace |    | W %20%20%20 |
 | namedMonth | | |
 |            | january | M january |
 |            | jan     | M january |
 |            | february | M february |
 |            | feb      | M february |
 |            | march    | M march |
 |            | mar     | M march |
 |            | april | M april |
 |            | apr     | M apr |
 |            | may | M may |
 |            | june | M june |
 |            | jun     | M jun |
 |            | july | M july |
 |            | jul     | M jul |
 |            | august | M august |
 |            | aug     | M aug |
 |            | september | M september |
 |            | sept | M september |
 |            | sep | M september |
 |            | october | M october |
 |            | oct | M october |
 |            | novemeber | M november |
 |            | nov | M november |
 |            | december | M december |
 |            | dec | M december |
 
