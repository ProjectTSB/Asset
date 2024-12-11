#> asset:mob/0410.heiloang/tick/animated_java/tick/5_1_move_start
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.5_1_move_start.frame matches 15 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.5_1_move_start.frame matches 30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
