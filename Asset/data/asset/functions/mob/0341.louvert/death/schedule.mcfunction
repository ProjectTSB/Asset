#> asset:mob/0341.louvert/death/schedule
#
# スケジュールによる調整
#
# @within function
#   asset:mob/0341.louvert/death/
#   asset:mob/0341.louvert/death/animation
#   asset:mob/0341.louvert/rejoin_process/

execute as @e[type=marker,tag=9H.Marker.SummonPoint,tag=9H.Death] at @s run function asset:mob/0341.louvert/death/animation
