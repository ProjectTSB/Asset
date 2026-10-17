#> asset:effect/0406.ocean_grace/modifier/add.m
#
# マクロで最大体力attributeを付与
#
# @input args
#   Val : double
#
# @within function asset:effect/0406.ocean_grace/modifier/add

# 最大体力
    $attribute @s generic.max_health modifier add 00000001-0000-0003-0000-019600000000 "406.OceanGrace" $(Val) multiply
