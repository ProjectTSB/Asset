#> asset:mob/0410.heiloang/tick/event/move_after_ehd/turn
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/move_after_ehd/

# ランダム方向に回転
    execute store result score @s BE.Dummy run random value 1..4
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s BE.Dummy *= $90 Const
    scoreboard players reset @s BE.Dummy
