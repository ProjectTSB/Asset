#> asset:mob/0412.tiamat/tick/animated_java/tick/1_idle
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0412.tiamat/tick/animated_java/tick/

# 演出
    execute if entity @s[tag=!BG.Skill.Idle] if score @s aj.1_idle.frame matches 31 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    # execute if score @s aj.1_idle.frame matches 38 run scoreboard players remove @s BE.Idle.Count 1
    # execute if score @s aj.1_idle.frame matches 38 if score @s BE.Idle.Count matches ..0 as @e[type=slime,tag=BE.EntityRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/act/
