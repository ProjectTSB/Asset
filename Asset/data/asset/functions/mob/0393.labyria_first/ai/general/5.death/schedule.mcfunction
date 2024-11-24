#> asset:mob/0393.labyria_first/ai/general/5.death/schedule
#
# スケジュール起動
#
# @within function
#   asset:mob/0393.labyria_first/death/
#   asset:mob/0393.labyria_first/ai/general/5.death/animation
#   asset:mob/0393.labyria_first/rejoin_process

execute as @e[type=marker,tag=AX.Marker.SummonPoint,tag=AX.Death] at @s run function asset:mob/0393.labyria_first/ai/general/5.death/animation
