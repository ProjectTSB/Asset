#> asset:effect/0364.bubble_wrap/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0364.bubble_wrap/end/
#   asset:effect/0364.bubble_wrap/remove/

# バリア削除
    data modify storage api: Argument.UUID set value [I;1,3,364,0]
    function api:entity/player/absorption/remove
    data modify storage api: Argument.UUID set value [I;1,3,364,1]
    function api:entity/player/absorption/remove
