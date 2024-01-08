#> asset:mob/0341.louvert/tick/projectile/soul_bomb_hard/
#
# Tick処理
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スコアを上昇
    scoreboard players add @s 9H.SoulBombHard 1

# スコアが一定以上の時、ボムを設置
    execute if score @s 9H.SoulBombHard matches 240 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] run function asset:mob/0341.louvert/tick/projectile/soul_bomb_hard/cast