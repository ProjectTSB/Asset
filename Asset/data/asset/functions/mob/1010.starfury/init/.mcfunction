#> asset:mob/1010.starfury/init/
# @within asset:mob/alias/1010/init

execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $3 Const
execute if score $Random Temporary matches 0 run tag @s add S2.Fire
execute if score $Random Temporary matches 1 run tag @s add S2.Water
execute if score $Random Temporary matches 2 run tag @s add S2.Thunder
scoreboard players reset $Random Temporary
