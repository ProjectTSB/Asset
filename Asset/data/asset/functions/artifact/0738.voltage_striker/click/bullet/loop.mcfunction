#> asset:artifact/0738.voltage_striker/click/bullet/loop
#
# 弾のループ処理
#
# @within function
#   asset:artifact/0738.voltage_striker/click/
#   asset:artifact/0738.voltage_striker/click/bullet/main
#   asset:artifact/0738.voltage_striker/click/rejoin_process

# メイン処理
    execute as @e[type=marker,tag=KI.Bullet] at @s run function asset:artifact/0738.voltage_striker/click/bullet/main