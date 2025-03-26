#> asset:effect/0318.arbit/barrier/remove
#
#
#
# @within function
#   asset:effect/0318.arbit/end/
#   asset:effect/0318.arbit/re-given/
#   asset:effect/0318.arbit/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set value [I;1,3,318,0]
    function api:entity/player/absorption/remove
