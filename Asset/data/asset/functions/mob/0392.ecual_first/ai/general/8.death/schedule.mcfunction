#> asset:mob/0392.ecual_first/ai/general/8.death/schedule
#
# スケジュール処理
#
# @within function
#   asset:mob/0392.ecual_first/death/
#   asset:mob/0392.ecual_first/ai/general/8.death/animation
#   asset:mob/0392.ecual_first/rejoin_process

execute as @e[type=marker,tag=AW.Marker.SummonPoint,tag=AW.Death] at @s run function asset:mob/0392.ecual_first/ai/general/8.death/animation
