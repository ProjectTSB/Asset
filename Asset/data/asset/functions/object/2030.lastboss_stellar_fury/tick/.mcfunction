#> asset:object/2030.lastboss_stellar_fury/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2030/tick

# particle
    execute if entity @s[tag=2030.Fire] run particle minecraft:dust 1 0.7 0.3 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
    execute if entity @s[tag=2030.Water] run particle dust 0.8 1 1 1 ~ ~ ~ 0 0 0 1 1 force @a[distance=..100]
    execute if entity @s[tag=2030.Thunder] run particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 1 1 force @a[distance=..100]
    particle electric_spark ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..100]

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# タグ付与されたら落下を開始する: Super
    execute if entity @s[tag=2030.Start] run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
