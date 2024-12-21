#> asset:object/2145.louvert_soul_blast/tick/cast/loop
#
# ループ処理
#
# @within function
#   asset:object/2145.louvert_soul_blast/tick/cast/
#   asset:object/2145.louvert_soul_blast/tick/cast/loop

# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove $2145.Temp Temporary 1
    execute positioned ~-1 ~-1 ~-1 run tag @e[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] add 2145.Landing
    particle sonic_boom ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle soul_fire_flame ^ ^ ^ 1 1 1 0.01 10 force @a[distance=..32]
    execute if score $2145.Temp Temporary matches 1.. positioned ^ ^ ^1.5 run function asset:object/2145.louvert_soul_blast/tick/cast/loop
