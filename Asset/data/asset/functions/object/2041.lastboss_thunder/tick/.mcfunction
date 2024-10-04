#> asset:object/2041.lastboss_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2041/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷が落ちてくる
    execute if score @s General.Object.Tick matches 40 run function asset:object/2041.lastboss_thunder/tick/thunder

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
