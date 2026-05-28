#> asset:object/1158.ouroboros_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1158/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]

    particle dust 5 20000000 3 1 ~ ~ ~ 0 0 0 0 1


# super.tick
    execute at @s run function asset:object/super.tick
