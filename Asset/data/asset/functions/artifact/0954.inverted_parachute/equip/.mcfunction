#> asset:artifact/0954.inverted_parachute/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/954/equip/

    playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.5 0
    effect give @s levitation 1000000 3 true