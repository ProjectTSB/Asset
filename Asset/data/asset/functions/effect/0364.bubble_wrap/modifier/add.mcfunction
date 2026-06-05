#> asset:effect/0364.bubble_wrap/modifier/add
#
#
#
# @within function asset:effect/0364.bubble_wrap/given/

# 雷耐性ダウン
    data modify storage api: Argument.UUID set value [I;1,3,364,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/defense/thunder/add
