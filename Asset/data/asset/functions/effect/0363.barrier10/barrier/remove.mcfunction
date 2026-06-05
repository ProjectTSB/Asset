#> asset:effect/0363.barrier10/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0363.barrier10/end/
#   asset:effect/0363.barrier10/remove/

# バリア削除
    data modify storage api: Argument.UUID set value [I;1,3,363,0]
    function api:entity/player/absorption/remove
    data modify storage api: Argument.UUID set value [I;1,3,363,1]
    function api:entity/player/absorption/remove
