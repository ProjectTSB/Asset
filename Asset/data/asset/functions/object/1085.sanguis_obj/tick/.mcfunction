#> asset:object/1085.sanguis_obj/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1085/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 斬る
    execute if score @s General.Object.Tick matches 2 run function asset:object/1085.sanguis_obj/tick/slash1
    execute if score @s General.Object.Tick matches 5 run function asset:object/1085.sanguis_obj/tick/slash2
