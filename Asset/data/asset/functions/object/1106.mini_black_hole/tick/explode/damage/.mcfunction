#> asset:object/1106.mini_black_hole/tick/explode/damage/
#
#
#
# @within asset:object/1106.mini_black_hole/tick/explode/

scoreboard players operation $UQ.Temp Temporary = @s General.Object.Tick
scoreboard players operation $UQ.Temp Temporary %= $4 Const
execute if score $UQ.Temp Temporary matches 0 store result storage asset:temp Args.Range double 0.1 run scoreboard players get @s General.Object.Tick
execute if score $UQ.Temp Temporary matches 0 run function asset:object/1106.mini_black_hole/tick/explode/damage/do.m with storage asset:temp Args
execute if score $UQ.Temp Temporary matches 0 run data remove storage asset:temp Args
scoreboard players reset $UQ.Temp Temporary
