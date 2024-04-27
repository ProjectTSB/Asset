#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop
#
# スケジュールループ
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/3.main
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop
#   asset:artifact/1033.thelema_of_blue_sea/trigger/rejoin_process

# main処理の実行
    execute as @e[type=area_effect_cloud,tag=SP.VFXEntity] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main
    execute as @e[type=area_effect_cloud,tag=SP.PersuitEntity] at @s rotated ~ 0 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main
    execute as @e[type=item_display,tag=SP.Sword] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/main

# ループ
    execute if entity @e[type=#asset:artifact/1033.thelema_of_blue_sea/loop_targets,tag=SP.Entity,limit=1] run schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop 1t replace