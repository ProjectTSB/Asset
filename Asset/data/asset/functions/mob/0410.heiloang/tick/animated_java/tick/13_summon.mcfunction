#> asset:mob/0410.heiloang/tick/animated_java/tick/13_summon
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.13_summon.frame matches 15 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
