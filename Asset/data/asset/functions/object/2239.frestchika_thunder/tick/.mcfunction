#> asset:object/2239.frestchika_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2239/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 見た目レーザー
    execute if score @s General.Object.Tick matches 10 run function asset:object/2239.frestchika_thunder/tick/visual_laser

# 雷が落ちてくる
    execute if score @s General.Object.Tick matches 15 run function asset:object/2239.frestchika_thunder/tick/thunder
