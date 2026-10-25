#> asset:object/2238.frestchika_holo_block/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2238/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 見た目 壊れそうになると色が変わる
    execute if score @s General.Object.Tick matches ..140 align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 1 1 0.75 ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if score @s General.Object.Tick matches 140.. align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0.5 0.5 0.75 ~ ~ ~ 0.15 0.15 0.15 0 1

# 自分の場所にあるブロックが消えたらキルされる
    execute if block ~ ~ ~ #lib:no_collision/ run kill @s

# 消失
    execute if score @s General.Object.Tick matches 200.. run function asset:object/2238.frestchika_holo_block/tick/break
