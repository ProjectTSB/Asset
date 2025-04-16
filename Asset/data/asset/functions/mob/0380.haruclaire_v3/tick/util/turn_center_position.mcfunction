#> asset:mob/0380.haruclaire_v3/tick/util/turn_center_position
#
# 汎用処理 中心点のランダム回転
#
# @within
#     function asset:mob/0380.haruclaire_v3/tick/event/**
#     function asset:mob/0380.haruclaire_v3/tick/act/**

# ランダム方向に回転
    execute store result score @s AK.Dummy run random value 1..4
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s AK.Dummy *= $90 Const
    scoreboard players reset @s AK.Dummy
