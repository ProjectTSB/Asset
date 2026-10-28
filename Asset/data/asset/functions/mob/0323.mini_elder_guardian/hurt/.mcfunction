#> asset:mob/0323.mini_elder_guardian/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/323/hurt

# サウンド
    playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 2 1.4

# HurtTime
    data modify storage asset:context this.HurtTime set value 20
    data modify entity @s NoAI set value 0b
