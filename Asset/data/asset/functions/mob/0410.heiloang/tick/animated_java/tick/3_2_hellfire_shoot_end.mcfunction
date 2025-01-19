#> asset:mob/0410.heiloang/tick/animated_java/tick/3_2_hellfire_shoot_end
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.3_2_hellfire_shoot_end.frame matches 27 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
