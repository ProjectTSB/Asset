#> asset:artifact/0643.raimei_chestplate/equip/3.4.loop
#
# ループします
#
# @within function
#   asset:artifact/0643.raimei_chestplate/equip/3.1.armorfullset
#   asset:artifact/0643.raimei_chestplate/equip/3.4.loop
#   asset:artifact/0643.raimei_chestplate/equip/rejoin_process

# 対象へ実行
    execute as @a[tag=HV.Full] at @s run function asset:artifact/0643.raimei_chestplate/equip/3.5.loop_effect

# ループ
    execute if entity @a[tag=HV.Full] run schedule function asset:artifact/0643.raimei_chestplate/equip/3.4.loop 1t replace