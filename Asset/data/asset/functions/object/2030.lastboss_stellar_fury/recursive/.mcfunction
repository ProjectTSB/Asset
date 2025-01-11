#> asset:object/2030.lastboss_stellar_fury/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2030/recursive

# particle
    execute if entity @s[tag=2030.Fire] run particle minecraft:dust 1 0.7 0.3 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
    execute if entity @s[tag=2030.Water] run particle dust 0.8 1 1 1 ~ ~ ~ 0 0 0 1 1 force @a[distance=..100]
    execute if entity @s[tag=2030.Thunder] run particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 1 1 force @a[distance=..100]
    particle electric_spark ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..100]
