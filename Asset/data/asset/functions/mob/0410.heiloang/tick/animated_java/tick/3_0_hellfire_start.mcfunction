#> asset:mob/0410.heiloang/tick/animated_java/tick/3_0_hellfire_start
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.anim_time matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
