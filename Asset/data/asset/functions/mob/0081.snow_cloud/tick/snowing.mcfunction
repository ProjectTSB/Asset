#> asset:mob/0081.snow_cloud/tick/snowing
#
# 降雪処理
#
# @within function asset:mob/0081.snow_cloud/tick/

# 再帰処理
    execute positioned ~-0.75 ~-6 ~-0.75 as @a[gamemode=!spectator,dx=1.5,dy=6,dz=1.5] at @s run function asset:mob/0081.snow_cloud/tick/check_block

# スコアリセット
    scoreboard players reset @s 29.SnowTick
