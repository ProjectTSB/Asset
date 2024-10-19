#> asset:mob/0176.killer_bee/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/176/hurt

# 演出
    playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1

# HurtTimeをスコア化
    scoreboard players set @s 4W.HurtTime 20
    data modify entity @s[scores={4W.MoveTime=..49}] NoAI set value 0b
