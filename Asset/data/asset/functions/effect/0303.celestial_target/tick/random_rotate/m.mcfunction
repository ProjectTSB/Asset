#> asset:effect/0303.celestial_target/tick/random_rotate/m
#
#
#
# @input args
#   Mode: string
#   YawMin: int
#   YawMax: int
#   PitchMin: int
#   PitchMax: int
# @within function asset:effect/0303.celestial_target/tick/

$data modify storage asset:temp Args.Mode set value "$(Mode)"
$execute store result storage asset:temp Args.Yaw int 1 run random value $(YawMin)..$(YawMax)
$execute store result storage asset:temp Args.Pitch int 1 run random value $(PitchMin)..$(PitchMax)
function asset:effect/0303.celestial_target/tick/random_rotate/tp.m with storage asset:temp Args
data remove storage asset:temp Args
