#> asset:mob/0186.ferocious_bee/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/186/hurt

# 演出
    playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1

# HurtTimeをスコア化
    scoreboard players set @s 56.HurtTime 20
    data modify entity @s[scores={56.MoveTime=..179}] NoAI set value 0b
