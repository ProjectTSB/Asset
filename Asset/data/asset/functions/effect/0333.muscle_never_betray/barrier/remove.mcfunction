#> asset:effect/0333.muscle_never_betray/barrier/remove
#
#
#
# @within function
#   asset:effect/0333.muscle_never_betray/end/
#   asset:effect/0333.muscle_never_betray/re-given/
#   asset:effect/0333.muscle_never_betray/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set value [I;1,3,333,0]
    function api:entity/player/absorption/remove
