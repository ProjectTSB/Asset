#> asset:artifact/1065.magic_bullet/trigger/bullet/loop
#
# ループ処理
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/3.main
#   asset:artifact/1065.magic_bullet/trigger/bullet/main

# ループ
    execute as @e[type=marker,tag=TL.Bullet] at @s run function asset:artifact/1065.magic_bullet/trigger/bullet/main
