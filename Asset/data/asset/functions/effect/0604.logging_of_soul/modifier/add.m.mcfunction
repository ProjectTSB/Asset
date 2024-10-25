#> asset:effect/0604.logging_of_soul/modifier/add.m
#
# @input args
#  ModfierValue  : float
#
# @within function asset:effect/0604.logging_of_soul/modifier/add

# 最大体力を減少させる
    $attribute @s generic.max_health modifier add 00000001-0000-0003-0000-025c00000000 "GS.MaxHealth" $(ModfierValue) multiply
