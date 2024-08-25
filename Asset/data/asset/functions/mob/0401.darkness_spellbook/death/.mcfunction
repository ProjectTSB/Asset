#> asset:mob/0401.darkness_spellbook/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0401.darkness_spellbook/_/death

# 死ぬ音
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.6 0.7

# キル処理
    execute as @e[type=marker,tag=B5.Marker,distance=..5] on vehicle if entity @s[nbt={Health:0f}] on passengers run function asset:mob/0401.darkness_spellbook/death/kill
