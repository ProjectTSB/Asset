#> asset:artifact/0643.raimei_chestplate/trigger/fullset/loop/schedule
#
# ループします
#
# @within function
#   asset:artifact/0643.raimei_chestplate/trigger/fullset/equip/
#   asset:artifact/0643.raimei_chestplate/trigger/fullset/loop/schedule
#   asset:artifact/0643.raimei_chestplate/trigger/rejoin_process

# 対象へ実行
    execute as @a[tag=HV.Full] at @s run function asset:artifact/0643.raimei_chestplate/trigger/fullset/loop/

# ループ
    execute if entity @a[tag=HV.Full] run schedule function asset:artifact/0643.raimei_chestplate/trigger/fullset/loop/schedule 1t replace
