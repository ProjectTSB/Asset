#> asset:artifact/0664.soul_fire_armor/equip/fullset/loop
#
# スケジュールループするよ
#
# @within function
#   asset:artifact/0664.soul_fire_armor/equip/fullset/
#   asset:artifact/0664.soul_fire_armor/equip/fullset/main
#   asset:artifact/0664.soul_fire_armor/equip/rejoin_process

# メイン処理
    execute as @a[tag=IG.Fullset] at @s run function asset:artifact/0664.soul_fire_armor/equip/fullset/main