#> asset:artifact/1655.ocean_heart/trigger/heal.m
#
# 失った体力に回復割合を掛ける
#
# @input args
#   LostHealth : int
#       失った体力(10倍)
#   Rate : double
#       失った体力に対する回復割合
# @output storage asset:temp Args.Heal : int
#     回復量(10倍)
# @within function asset:artifact/1655.ocean_heart/trigger/heal

# 回復量を計算する
    $execute store result storage asset:temp Args.Heal int 1 run data get storage asset:temp Args.LostHealth $(Rate)
