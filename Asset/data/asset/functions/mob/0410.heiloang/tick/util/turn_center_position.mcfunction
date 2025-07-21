#> asset:mob/0410.heiloang/tick/util/turn_center_position
#
# 汎用処理 中心点を90°でランダム方向に回転
#
# @within asset:mob/0410.heiloang/tick/event/**

# ランダム方向に回転
    execute store result score @s BE.Dummy run random value 1..4
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s BE.Dummy *= $90 Const
    scoreboard players reset @s BE.Dummy
