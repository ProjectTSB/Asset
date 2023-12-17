#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop
#
#
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/3.main
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main

# main処理の実行
    execute as @e[type=area_effect_cloud,tag=SP.Entity,tag=SP.VFXEntity] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main
    execute as @e[type=area_effect_cloud,tag=SP.Entity,tag=SP.PersuitEntity] at @s rotated ~ 0 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main
    execute as @e[type=item_display]

# ループ
    execute if entity @e[type=