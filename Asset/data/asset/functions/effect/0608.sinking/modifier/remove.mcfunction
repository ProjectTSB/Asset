#> asset:effect/0608.sinking/modifier/remove
#
# 補正を削除
#
# @within function
#   asset:effect/0608.sinking/end/
#   asset:effect/0608.sinking/re-given/
#   asset:effect/0608.sinking/remove/

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,608,0]
    function api:modifier/attack/base/remove
# 移動速度を削除
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-026000000000
