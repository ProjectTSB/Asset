#> asset:object/2041.lastboss_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2041/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷が落ちてくる
    execute if score @s General.Object.Tick matches 20 run function asset:object/2041.lastboss_thunder/tick/thunder

# 縮む
    execute if score @s General.Object.Tick matches 22 run function asset:object/2041.lastboss_thunder/tick/transform/2

# しばらくしたらキル
    execute if score @s General.Object.Tick matches 24 run kill @s
