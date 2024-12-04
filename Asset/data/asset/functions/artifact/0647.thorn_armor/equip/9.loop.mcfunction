#> asset:artifact/0647.thorn_armor/equip/9.loop
#
# スケジュールループを実行
#
# @within function
#   asset:artifact/0647.thorn_armor/equip/4.fullset
#   asset:artifact/0647.thorn_armor/equip/10.loop_process
#   asset:artifact/0647.thorn_armor/equip/rejoin_process

# 対象がいるなら実行
    execute as @a[tag=HZ.FullSet] at @s run function asset:artifact/0647.thorn_armor/equip/10.loop_process