#> asset:object/1106.sparkle_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1106/tick

# vfx
    particle dust 0.2 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 normal

# 回転
# TODO バージョンアップしたら/rotateにする
    execute unless data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~22.5 ~
    execute if data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~-22.5 ~

# super
    execute at @s run function asset:object/super.tick
