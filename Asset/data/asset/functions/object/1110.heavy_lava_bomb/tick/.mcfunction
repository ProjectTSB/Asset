#> asset:object/1110.heavy_lava_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1110/tick

# 雪玉がいる間のvfx
    execute if predicate lib:is_vehicle run particle dust 1 0.45 0.1 1.2 ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a

# 回転
# TODO バージョンアップしたら/rotateにする
    execute unless data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~5 ~
    execute if data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~-5 ~

# super.tick
    execute at @s run function asset:object/super.tick
