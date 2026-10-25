#> asset:object/1002.malleus_maleficarum/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1002/tick

# vfx
    particle soul_fire_flame ~ ~ ~ 0 0 0 0 1

# super.tick
    execute at @s run function asset:object/super.tick
