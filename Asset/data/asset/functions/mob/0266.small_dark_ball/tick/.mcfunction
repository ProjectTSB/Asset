#> asset:mob/0266.small_dark_ball/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0266.small_dark_ball/_/tick

# スコア
    scoreboard players add @s 7E.Tick 1

# パーティクル
    particle minecraft:witch ~ ~ ~ 0 0 0 0 1 normal @a

# 移動
    function asset:mob/0266.small_dark_ball/tick/move
    scoreboard players reset $Recursive Temporary

# キル
    execute if entity @s[scores={7E.Tick=80..}] run kill @s
