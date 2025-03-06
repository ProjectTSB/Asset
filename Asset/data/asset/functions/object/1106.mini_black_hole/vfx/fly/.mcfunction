#> asset:object/1106.mini_black_hole/vfx/fly/
#
#
#
# @within asset:object/1106.mini_black_hole/tick/fly

execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
function asset:object/1106.mini_black_hole/vfx/fly/vfx.m with storage asset:temp Args
data remove storage asset:temp Args
