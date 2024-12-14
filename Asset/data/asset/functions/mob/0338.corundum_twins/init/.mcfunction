#> asset:mob/0338.corundum_twins/init/
# @within asset:mob/alias/338/init

execute as @e[type=slime,tag=MobInit,distance=..0.01] run function asset:mob/0338.corundum_twins/summon/app/1.init
execute as @e[type=slime,tag=MobInit,distance=..0.01] run function asset:mob/0338.corundum_twins/summon/app/2.summon_twins
tp @s ~ ~5 ~
