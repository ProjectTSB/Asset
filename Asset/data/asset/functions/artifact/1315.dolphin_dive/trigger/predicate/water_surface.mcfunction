#> asset:artifact/1315.dolphin_dive/trigger/predicate/water_surface
#
#
#
# @within function asset:artifact/1315.dolphin_dive/trigger/2.check_condition

# 足元が水 かつ 顔が水中でないなら成功
    execute if block ~ ~ ~ water anchored eyes unless block ^ ^ ^ water run return 1
