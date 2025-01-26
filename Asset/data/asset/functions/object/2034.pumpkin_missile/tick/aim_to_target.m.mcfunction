#> asset:object/2034.pumpkin_missile/tick/aim_to_target.m
#
# ターゲットに誘導する
#
# args:
#   TargetName: String
#
# @within function asset:object/2034.pumpkin_missile/tick/

# 追尾
    $execute facing entity $(TargetName) eyes positioned ^ ^ ^-120 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
