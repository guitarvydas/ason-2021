#!/bin/bash
#cp big-test.gl test.gl
cp small-test.gl test.gl
../grasem/run.bash ason.grasem <test.gl >_temp
../grasem/run.bash killws.grasem <_temp >_temp2
../grasem/run.bash numerical.grasem <_temp2 >_temp3
../grasem/run.bash date.grasem <_temp3 >_temp4
../grasem/run.bash stringsAndBinary.grasem <_temp4 >_temp5
cat _temp5
