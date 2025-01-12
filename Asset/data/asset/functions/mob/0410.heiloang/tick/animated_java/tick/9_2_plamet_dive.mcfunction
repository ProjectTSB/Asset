#> asset:mob/0410.heiloang/tick/animated_java/tick/9_2_plamet_dive
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.9_2_plamet_dive.frame matches 12 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.9_2_plamet_dive.frame matches 30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.9_2_plamet_dive.frame matches 70 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.9_2_plamet_dive.frame matches 101 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
