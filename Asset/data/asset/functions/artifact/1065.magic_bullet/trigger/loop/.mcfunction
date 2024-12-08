#> asset:artifact/1065.magic_bullet/trigger/loop/
#
# スケジュールループ
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/3.main
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
#   asset:artifact/1065.magic_bullet/trigger/loop/square/main
#   asset:artifact/1065.magic_bullet/trigger/rejoin_process


# ループ処理
    execute as @e[type=marker,tag=TL.Bullet] at @s run function asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
    execute as @e[type=item_display,tag=TL.Square] at @s run function asset:artifact/1065.magic_bullet/trigger/loop/square/main
