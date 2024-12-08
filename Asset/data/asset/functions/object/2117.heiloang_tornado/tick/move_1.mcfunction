#> asset:object/2117.heiloang_tornado/tick/move_1
#
# Objectのtick時の処理
#
# @within asset:object/2117.heiloang_tornado/tick/

# 近くのプレイヤーを吸引
    execute as @a[distance=3..13] at @s facing entity @e[type=item_display,tag=2117.Pos,limit=1] feet run tp @s ^ ^ ^0.4
    execute as @a[distance=13..20] at @s facing entity @e[type=item_display,tag=2117.Pos,limit=1] feet run tp @s ^ ^ ^1.0
    execute as @a[distance=20..50] at @s facing entity @e[type=item_display,tag=2117.Pos,limit=1] feet run tp @s ^ ^ ^1.6
