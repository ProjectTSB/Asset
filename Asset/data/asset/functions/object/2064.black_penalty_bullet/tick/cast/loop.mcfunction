#> asset:object/2064.black_penalty_bullet/tick/cast/loop
#
# ループ処理
#
# @within function
#   asset:object/2064.black_penalty_bullet/tick/cast/
#   asset:object/2064.black_penalty_bullet/tick/cast/loop

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add 2064.Landing

# 演出
    particle dust 0 0 0 2 ~ ~ ~ 0.1 0.1 0.1 0 2
    particle electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 1
    execute if predicate lib:random_pass_per/10 run particle end_rod ~ ~ ~ 0.15 0.15 0.15 0 1

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!2064.Landing,distance=..100] run function asset:object/2064.black_penalty_bullet/tick/cast/loop
