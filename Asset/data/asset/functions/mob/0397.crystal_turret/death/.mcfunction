#> asset:mob/0397.crystal_turret/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0397.crystal_turret/_/death

# ディスプレイキル
    execute as @e[type=item_display,tag=B1.Display,distance=..5] on vehicle if entity @s[nbt={Health:0f}] on passengers run tag @s add B1.Temp
    execute as @e[type=item_display,tag=B1.Display,tag=B1.Temp,distance=..5] on passengers run kill @s
    kill @e[type=item_display,tag=B1.Display,tag=B1.Temp,distance=..5]
