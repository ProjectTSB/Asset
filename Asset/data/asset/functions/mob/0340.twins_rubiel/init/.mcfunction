#> asset:mob/0340.twins_rubiel/init/
# @within asset:mob/alias/340/init

execute unless entity @s[type=slime,tag=9E.Root] run tellraw @a [{"text":"【0340.twins_rubielは0338.corundum_twinsの処理でのみ召喚できます】","color":"white"}]
execute unless entity @s[type=slime,tag=9E.Root] run return -1
execute positioned ~ ~100 ~ rotated ~ 0 run function animated_java:twins_rubiel/summon
execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0340.twins_rubiel/summon/app/1.init
