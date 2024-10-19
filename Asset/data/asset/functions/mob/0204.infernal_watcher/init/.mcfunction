#> asset:mob/0204.infernal_watcher/init/
# @within asset:mob/alias/204/init

execute positioned ~ ~-100 ~ run tp @s ~ ~100 ~
execute as @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
scoreboard players set @s 5O.LifeTime 1000
