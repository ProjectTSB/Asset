#> asset:artifact/0758.sina_tk/using_item/bullet/loop
#
# ループ処理を行う
#
# @within function
#   asset:artifact/0758.sina_tk/using_item/
#   asset:artifact/0758.sina_tk/using_item/bullet/main
#   asset:artifact/0758.sina_tk/rejoin_process

# 実行
    execute as @e[type=marker,tag=L2.Bullet] at @s run function asset:artifact/0758.sina_tk/using_item/bullet/main
