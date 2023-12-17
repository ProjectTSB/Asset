#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop
#
#
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/3.main
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main

# main処理の実行
    execute as @e[type=marker,tag=SP.Entity,tag=SP.VFXEntity] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main
    execute as @e[type=marker,tag=SP.Entity,tag=SP.PersuitEntity] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main