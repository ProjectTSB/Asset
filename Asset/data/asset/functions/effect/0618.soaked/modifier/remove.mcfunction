#> asset:effect/0618.soaked/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0618.soaked/end/
#   asset:effect/0618.soaked/re-given/
#   asset:effect/0618.soaked/remove/

# 移動速度低下を削除
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-026a00000000

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,618,0]
    function api:modifier/defense/water/remove
