#!/bin/bash
cp big-test.gl test.gl
../grasem/run.bash ason.grasem <test.gl >_temp
../grasem/run.bash killws.grasem <_temp >_temp2
../grasem/run.bash numerical.grasem <_temp2 >_temp3
../grasem/run.bash date.grasem <_temp3 >_temp4
cat _temp4

