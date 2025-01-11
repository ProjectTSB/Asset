#> asset:mob/0410.heiloang/tick/animated_java/tick/5_2_move
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.5_2_move.frame matches 22 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.5_2_move.frame matches 65 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.5_2_move.frame matches 85 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.5_2_move.frame matches 107 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.5_2_move.frame matches 71 run playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
