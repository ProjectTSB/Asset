#> asset:mob/0302.call_gun/init/
# @within asset:mob/alias/302/init

scoreboard players operation @e[type=zombie,tag=MobInit,distance=..0.01] 8E.UserID = @s UserID
execute facing entity @s eyes rotated ~ ~180 run tp @e[type=zombie,tag=MobInit,distance=..0.01] ~ ~ ~ ~ ~
execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $10 Const
scoreboard players operation @e[type=zombie,tag=MobInit,distance=..0.01] 8E.Tick = $Random Temporary
scoreboard players remove @e[type=zombie,tag=MobInit,distance=..0.01] 8E.Tick 20
scoreboard players reset $Random Temporary
