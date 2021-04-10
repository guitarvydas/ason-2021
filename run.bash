#!/bin/bash
../grasem/run.bash ason.grasem <test.gl >_temp
../grasem/run.bash killws.grasem <_temp >_temp2
../grasem/run.bash numerical.grasem <_temp2
#cat _temp3

