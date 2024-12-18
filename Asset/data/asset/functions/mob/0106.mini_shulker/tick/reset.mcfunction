#> asset:mob/0106.mini_shulker/tick/reset
#
# リセット処理
#
# @within function asset:mob/0106.mini_shulker/tick/**

execute store result score $2Y.Random Temporary run function lib:random/
scoreboard players operation $2Y.Random Temporary %= $20 Const
execute store result score @s General.Mob.Tick run scoreboard players remove $2Y.Random Temporary 30
scoreboard players reset $2Y.Random
