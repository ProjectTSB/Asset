#> asset:mob/0115.jewel_bullet/tick/3.move_recursive
#
# 再帰処理で前方へ進む
#
# @within function
#   asset:mob/0115.jewel_bullet/tick/2.tick
#   asset:mob/0115.jewel_bullet/tick/3.move_recursive

# 演出
    particle minecraft:dust 8 1 8 1.5 ~ ~1.2 ~ 0.25 0.25 0.25 1 1 normal @a

# 前方へ進む
    execute if predicate api:global_vars/difficulty/max/normal run tp @s ^ ^ ^0.2
    execute if predicate api:global_vars/difficulty/min/hard run tp @s ^ ^ ^0.375

# ヒット処理
    execute positioned ~-0.5 ~ ~-0.5 if entity @p[gamemode=!spectator,dx=0] run function asset:mob/0115.jewel_bullet/tick/4.hit

# 再帰用スコア
    scoreboard players add $RecursiveCount Temporary 1

# 4回まで再帰
    execute if score $RecursiveCount Temporary matches ..4 at @s run function asset:mob/0115.jewel_bullet/tick/3.move_recursive
