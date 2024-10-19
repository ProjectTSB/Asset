#> asset:mob/0017.fire_bird/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/17/death

particle flame ~ ~ ~ 0.5 0.5 0.5 0 60 normal @a
playsound block.fire.ambient hostile @a ~ ~ ~ 2 0.4 0
