#> asset:effect/0201.magic_shield/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0201.magic_shield/end/
#   asset:effect/0201.magic_shield/remove/

# バリア削除
    data modify storage api: Argument.UUID set value [I;1,3,201,0]
    function api:entity/player/absorption/remove
    data modify storage api: Argument.UUID set value [I;1,3,201,1]
    function api:entity/player/absorption/remove
