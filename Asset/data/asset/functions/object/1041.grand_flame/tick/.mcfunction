#> asset:object/1041.grand_flame/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1041/tick

# 演出
    function asset:object/1041.grand_flame/tick/vfx

# super.tick
    execute at @s run function asset:object/super.tick
