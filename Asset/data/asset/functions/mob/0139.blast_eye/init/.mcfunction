#> asset:mob/0139.blast_eye/init/
# @within asset:mob/alias/139/init

execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $100 Const
scoreboard players operation @e[type=zombie,tag=MobInit,distance=..0.01] 3v.Time = $Random Temporary
scoreboard players reset $Random Temporary
