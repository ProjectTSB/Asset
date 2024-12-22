#> asset:mob/0380.haruclaire_v3/tick/animated_java/tick/1_0_rod_idle
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0380.haruclaire_v3/tick/animated_java/tick/

# 演出
    # execute if score @s aj.1_0_rod_idle.frame matches 11 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    # execute if score @s aj.1_0_rod_idle.frame matches 38 run scoreboard players remove @s BE.Idle.Count 1
    execute if score @s aj.1_0_rod_idle.frame matches 49 as @e[type=wither_skeleton,tag=AK.EntityRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/act/
