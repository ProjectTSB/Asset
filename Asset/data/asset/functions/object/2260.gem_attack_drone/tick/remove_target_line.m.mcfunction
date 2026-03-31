#> asset:object/2262.gem_panjan_drone/tick/remove_target_line.m
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_move

# 線紐づけ
    $execute as @e[type=item_display,tag=2272.Line,distance=..30] if score @s 2272.ObjectId matches $(ObjectId) run tag @s add 2272.Line.Target
    kill @e[type=item_display,tag=2272.Line.Target,distance=..30]
