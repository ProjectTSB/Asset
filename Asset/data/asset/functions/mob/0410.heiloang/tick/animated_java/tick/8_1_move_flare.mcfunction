#> asset:mob/0410.heiloang/tick/animated_java/tick/8_1_move_flare
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.8_1_move_flare.frame matches 22 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.8_1_move_flare.frame matches 48 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.8_1_move_flare.frame matches 70 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.8_1_move_flare.frame matches 111 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.8_1_move_flare.frame matches 70 run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.7
