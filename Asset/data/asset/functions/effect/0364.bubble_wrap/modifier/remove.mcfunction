#> asset:effect/0364.bubble_wrap/modifier/remove
#
#
#
# @within function
#   asset:effect/0364.bubble_wrap/end/
#   asset:effect/0364.bubble_wrap/remove/

# 雷耐性ダウン解除
    data modify storage api: Argument.UUID set value [I;1,3,364,0]
    function api:modifier/defense/thunder/remove
