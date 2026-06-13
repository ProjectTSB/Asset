#> asset:object/2294.sharkboss_shark/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2294/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 移動
    tp @s ^ ^ ^1 ~30 ~
    #say a
# パーティクル
    particle dust 0.471 0.824 1.000 1 ~ ~ ~ 0.471 0.824 1.000 1 0 normal
    particle minecraft:splash ~ ~0.5 ~ 0.9 0.9 0.9 1 3 normal
    particle minecraft:block cyan_stained_glass ~ ~ ~ 0.9 0.9 0.9 10 3

# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
