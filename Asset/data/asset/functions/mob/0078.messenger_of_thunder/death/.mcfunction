#> asset:mob/0078.messenger_of_thunder/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/78/death

particle dust 0 0 0 3 ~ ~1.3 ~ 0.6 0.6 0.6 0 20 normal @a
particle smoke ~ ~1.3 ~ 0.3 0.5 0.3 0.01 50 normal @a
playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.8 0.8 0.8
