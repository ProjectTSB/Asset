#> asset:mob/0380.haruclaire_v3/app/general/1.move
#
# 汎用処理・壁に埋まらないように移動
#
# @within function asset:mob/0380.haruclaire_v3/**

# 移動
    execute if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~
