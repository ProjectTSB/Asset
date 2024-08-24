#> asset:mob/0398.crystal_healer/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0398.crystal_healer/_/death

# キル処理
    execute as @e[type=item_display,tag=B2.Display,distance=..5] on vehicle if entity @s[nbt={Health:0f}] on passengers run function asset:mob/0398.crystal_healer/death/kill
