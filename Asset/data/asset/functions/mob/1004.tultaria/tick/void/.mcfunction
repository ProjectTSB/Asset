#> asset:mob/1004.tultaria/tick/void/
#
#
#
# @within function asset:mob/1004.tultaria/tick/

# 場外ダメージ処理
    execute positioned ~-50 ~-14 ~-50 as @a[gamemode=!spectator,dx=100,dy=10,dz=100] at @s run function asset:mob/1004.tultaria/tick/void/fall

# 奈落ライン
    execute positioned ~-50 ~-28 ~-50 as @a[gamemode=!spectator,dx=100,dy=0,dz=100] at @s run function asset:mob/1004.tultaria/tick/void/death/
