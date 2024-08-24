#> asset:mob/0397.crystal_turret/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0397.crystal_turret/_/death

# キル処理
    execute as @e[type=item_display,tag=B1.Display,distance=..5] on vehicle if entity @s[nbt={Health:0f}] on passengers run function asset:mob/0397.crystal_turret/death/kill
