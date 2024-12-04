#> asset:artifact/1043.gamma_ray/click/4.schedule
#
# 1Tick スケジュールによるスニーク検知
#
# @within function
#   asset:artifact/1043.gamma_ray/click/
#   asset:artifact/1043.gamma_ray/click/5.casting
#   asset:artifact/1043.gamma_ray/rejoin_process

execute as @a[tag=SZ.Cast] if predicate lib:is_sneaking at @s run function asset:artifact/1043.gamma_ray/click/5.casting

execute as @a[tag=SZ.Cast] unless predicate lib:is_sneaking at @s run function asset:artifact/1043.gamma_ray/click/6.cast
