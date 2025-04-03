#> asset:effect/0326.deep_slash/modifier/add
#
#
#
# @within function
#   asset:effect/0326.deep_slash/given/
#   asset:effect/0326.deep_slash/re-given/

# 移動速度
# スタックに応じてバフ量を変える
    execute if data storage asset:context {Stack:1} run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-014500000000 "326.DeepSlash" 0.1 multiply
    execute if data storage asset:context {Stack:2} run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-014500000000 "326.DeepSlash" 0.25 multiply
    execute if data storage asset:context {Stack:3} run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-014500000000 "326.DeepSlash" 1 multiply

# ノクバ耐性を最大まで上げる
    attribute @s generic.knockback_resistance modifier add 00000001-0000-0003-0000-014500000000 "326.DeepSlash" 10 add
