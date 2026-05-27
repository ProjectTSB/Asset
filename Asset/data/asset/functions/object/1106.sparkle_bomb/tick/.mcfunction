#> asset:object/1106.sparkle_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1106/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# vfx
    particle dust 0.2 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 normal

# 回転
# TODO バージョンアップしたら/rotateにする
    execute unless data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~22.5 ~
    execute if data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~-22.5 ~

# 消滅処理
    execute unless predicate lib:is_vehicle run function asset:object/1106.sparkle_bomb/tick/boom
    execute if score @s General.Object.Tick matches 60.. if entity @s run function asset:object/1106.sparkle_bomb/tick/boom
