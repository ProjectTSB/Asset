#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/move
#
# 走らせる
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/

# 走らせる
    tp @s ^ ^ ^0.6

# 確率でランダム方向を向く
    execute at @s if predicate lib:random_pass_per/18 run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/random_move/rotate

# SpawnMarkerから一定以上離れたら強制的にそっちを向かせる
    execute at @s unless entity @e[type=marker,tag=1N.SpawnMarker,distance=..12] facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..30] feet run tp @s ^ ^ ^1 ~ ~
