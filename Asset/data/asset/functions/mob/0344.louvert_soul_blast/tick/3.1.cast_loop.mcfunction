#> asset:mob/0344.louvert_soul_blast/tick/3.1.cast_loop
#
# ループ
#
# @within function
#   asset:mob/0344.louvert_soul_blast/tick/3.cast
#   asset:mob/0344.louvert_soul_blast/tick/3.1.cast_loop

# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove $9K.Temp Temporary 1
    execute positioned ~-1 ~-1 ~-1 run tag @e[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] add 9K.Landing
    particle sonic_boom ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle soul_fire_flame ^ ^ ^ 1 1 1 0.01 10 force @a[distance=..32]
    execute if score $9K.Temp Temporary matches 1.. positioned ^ ^ ^1.5 run function asset:mob/0344.louvert_soul_blast/tick/3.1.cast_loop