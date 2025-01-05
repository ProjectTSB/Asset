#> asset:effect/0606.mineralization/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0606.mineralization/given/

# 移動速度-75%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-025e00000000 "606.Speed" -0.75 multiply

# ノクバ耐性+10
    attribute @s generic.knockback_resistance modifier add 00000001-0000-0003-0000-025e00000000 "606.KBResist" 10 add
