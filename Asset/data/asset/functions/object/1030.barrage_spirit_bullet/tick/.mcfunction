#> asset:object/1030.barrage_spirit_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1030/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
    particle dust 1000000000 100000000 100000000 0.7 ~ ~ ~ 0.05 0.05 0.05 0 1

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]

    execute at @s run function asset:object/super.tick
