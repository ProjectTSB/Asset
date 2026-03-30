#> asset:object/2262.gem_panjan_drone/tick/link_target_line.m
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_idle
# @within asset:object/2262.gem_panjan_drone/tick/event_move

# 線紐づけ、移動
    $execute as @e[type=item_display,tag=2272.Line,distance=..30] if score @s 2272.ObjectId matches $(ObjectId) run tag @s add 2272.Line.Target
    execute at @s run tp @e[type=item_display,tag=2272.Line.Target,distance=..30] ^ ^2.8 ^1 0 0
    tag @e[type=item_display,tag=2272.Line.Target,distance=..30] remove 2272.Line.Target
