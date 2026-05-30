#> asset:effect/0364.bubble_wrap/barrier/add
#
# バリアを付与する
#
# @within function
#   asset:effect/0364.bubble_wrap/given/
#   asset:effect/0364.bubble_wrap/re-given/

# バリア
    data modify storage api: Argument.Amount set value 6
    data modify storage api: Argument.UUID set value [I;1,3,364,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value ""
    function api:entity/player/absorption/add
