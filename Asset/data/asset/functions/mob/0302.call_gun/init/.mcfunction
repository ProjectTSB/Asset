#> asset:mob/0302.call_gun/init/
# @within asset:mob/alias/302/init

scoreboard players operation @s 8E.UserID = @s UserID
execute facing entity @s eyes rotated ~ ~180 run tp @s ~ ~ ~ ~ ~
execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $10 Const
scoreboard players operation @s 8E.Tick = $Random Temporary
scoreboard players remove @s 8E.Tick 20
scoreboard players reset $Random Temporary
