#> asset:artifact/0711.deep_sea_coral_crown/equip/fullset/loop
#
# スケジュールループを行う
#
# @within function
#   asset:artifact/0711.deep_sea_coral_crown/equip/fullset/equip
#   asset:artifact/0711.deep_sea_coral_crown/equip/rejoin_process
#   asset:artifact/0711.deep_sea_coral_crown/equip/fullset/main

# スケジュールループ
    execute as @a[tag=JR.Fullset] at @s run function asset:artifact/0711.deep_sea_coral_crown/equip/fullset/main