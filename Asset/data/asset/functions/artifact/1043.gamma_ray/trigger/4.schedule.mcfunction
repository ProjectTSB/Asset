#> asset:artifact/1043.gamma_ray/trigger/4.schedule
#
# 1Tick スケジュールによるスニーク検知
#
# @within function
#   asset:artifact/1043.gamma_ray/trigger/3.main
#   asset:artifact/1043.gamma_ray/trigger/5.casting
#   asset:artifact/1043.gamma_ray/trigger/rejoin_process

execute as @a[tag=SZ.Cast] if predicate lib:is_sneaking at @s run function asset:artifact/1043.gamma_ray/trigger/5.casting

execute as @a[tag=SZ.Cast] unless predicate lib:is_sneaking at @s run function asset:artifact/1043.gamma_ray/trigger/6.cast