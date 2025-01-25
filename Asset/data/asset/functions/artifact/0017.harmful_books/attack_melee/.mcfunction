#> asset:artifact/0017.harmful_books/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/17/attack_melee/


execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:artifact/0017.harmful_books/attack_melee/3.1.add_effect

playsound minecraft:entity.witch.ambient player @a[distance=..10] ~ ~ ~ 1 1.2