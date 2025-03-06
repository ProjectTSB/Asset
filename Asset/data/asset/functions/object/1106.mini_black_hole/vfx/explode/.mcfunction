#> asset:object/1106.mini_black_hole/vfx/explode/
#
#
#
# @within asset:object/1106.mini_black_hole/tick/explode/

execute store result storage asset:temp Args.Tick int 1 run scoreboard players get @s General.Object.Tick
function asset:object/1106.mini_black_hole/vfx/explode/fc.m with storage asset:temp Args
data remove storage asset:temp Args
