#> asset:mob/0391.axia_first/ai/general/8.death/schedule
#
# スケジュール処理
#
# @within function
#   asset:mob/0391.axia_first/death/
#   asset:mob/0391.axia_first/ai/general/8.death/animation
#   asset:mob/0391.axia_first/rejoin_process

execute as @e[type=marker,tag=AV.Marker.SummonPoint,tag=AV.Death] at @s run function asset:mob/0391.axia_first/ai/general/8.death/animation
