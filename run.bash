#!/bin/bash
set -e
#cp big-test.gl test.gl
#cp small-test.gl test.gl
cp a-test.gl test.gl
echo 'ason'
../grasem/run.bash ason.grasem >_ason.js
node _ason.js <test.gl >_temp1
echo 'killws'
../grasem/run.bash killws.grasem >_killws.js
node _killws.js <_temp1 >_temp2
echo 'numerical'
../grasem/run.bash numerical.grasem >_numerical.js
node _numerical.js <_temp2 >_temp3
echo 'date'
../grasem/run.bash date.grasem >_date.js
node _date.js <_temp3 >_temp4
echo 'strings and binary'
../grasem/run.bash stringsAndBinary.grasem >_stringsAndBinary.js
node _stringsAndBinary.js <_temp4 >_temp5
echo 'negative numbers'
../grasem/run.bash negativenum.grasem >_negativenum.js
node _negativenum.js <_temp5 >_temp5a
echo 'words'
../grasem/run.bash words.grasem >_words.js
node _words.js <_temp5a >_temp6
echo 'expr'
m4 expr.grasem > _.grasem
../grasem/run.bash _.grasem >_expr.js
node _expr.js <_temp6 >_temp7

if `grep -q 'e!' _temp7`
then
  echo
  echo '*** FAILURE: e! should have been removed by expr'
  echo
  exit 1
fi



# echo 'generic emitter'
# m4 emitter.grasem >_.grasem

echo 'lisp emitter'
m4 emitter-lisp.grasem >_.grasem

../grasem/run.bash _.grasem >_emitter-lisp.js
node _emitter-lisp.js <_temp7 >test.lisp
