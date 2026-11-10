#> asset:effect/0437.phoenix_shield/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0437.phoenix_shield/re-given/
#   asset:effect/0437.phoenix_shield/end/
#   asset:effect/0437.phoenix_shield/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set value [I;1,3,437,0]
    function api:entity/player/absorption/remove
