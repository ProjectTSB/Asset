#> asset:artifact/0125.storm_bow/trigger/random_rotate/m
#
#
#
# @input args
#   Mode: string
#   YawMin: int
#   YawMax: int
#   PitchMin: int
#   PitchMax: int
# @within function
#   asset:artifact/0125.storm_bow/trigger/3.main
#   asset:artifact/0125.storm_bow/trigger/summon_arrow.m

$data modify storage asset:temp Args.Mode set value "$(Mode)"
$execute store result storage asset:temp Args.Yaw int 1 run random value $(YawMin)..$(YawMax)
$execute store result storage asset:temp Args.Pitch int 1 run random value $(PitchMin)..$(PitchMax)
function asset:artifact/0125.storm_bow/trigger/random_rotate/tp.m with storage asset:temp Args
data remove storage asset:temp Args
