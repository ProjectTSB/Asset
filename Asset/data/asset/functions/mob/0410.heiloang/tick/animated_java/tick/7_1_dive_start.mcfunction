#> asset:mob/0410.heiloang/tick/animated_java/tick/7_1_dive_start
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.7_1_dive_start.frame matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.7_1_dive_start.frame matches 20 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
