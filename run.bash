#!/bin/bash
set -e
#cp big-test.gl test.gl
cp small-test.gl test.gl
echo 'ason'
../grasem/run.bash ason.grasem <test.gl >_temp1
echo 'killws'
../grasem/run.bash killws.grasem <_temp1 >_temp2
echo 'numerical'
../grasem/run.bash numerical.grasem <_temp2 >_temp3
echo 'date'
../grasem/run.bash date.grasem <_temp3 >_temp4
echo 'strings and binary'
../grasem/run.bash stringsAndBinary.grasem <_temp4 >_temp5
echo 'negative numbers'
../grasem/run.bash negativenum.grasem <_temp5 >_temp5a
echo 'words'
../grasem/run.bash words.grasem <_temp5a >_temp6
echo 'expr'
m4 expr.grasem > _.grasem
../grasem/run.bash _.grasem <_temp6 >_temp7

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

../grasem/run.bash _.grasem <_temp7 >_temp8

