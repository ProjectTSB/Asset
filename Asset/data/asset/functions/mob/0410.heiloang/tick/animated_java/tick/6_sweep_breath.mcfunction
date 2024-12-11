#> asset:mob/0410.heiloang/tick/animated_java/tick/6_sweep_breath
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.6_sweep_breath.frame matches 8 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.6_sweep_breath.frame matches 24 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.6_sweep_breath.frame matches 74 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.6_sweep_breath.frame matches 116 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
