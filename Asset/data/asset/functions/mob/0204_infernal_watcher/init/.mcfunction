#> asset:mob/0204_infernal_watcher/init/
# @within asset:mob/alias/204/init

execute positioned ~ ~-100 ~ run tp @e[type=zombie,tag=MobInit,distance=..0.01] ~ ~100 ~
execute as @e[type=zombie,tag=MobInit,distance=..0.01] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[type=zombie,tag=MobInit,distance=..0.01] 5O.LifeTime 1000
