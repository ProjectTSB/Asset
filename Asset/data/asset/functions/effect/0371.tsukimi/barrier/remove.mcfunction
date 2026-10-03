#> asset:effect/0371.tsukimi/barrier/remove
#
#
#
# @within function
#   asset:effect/0371.tsukimi/end/
#   asset:effect/0371.tsukimi/re-given/
#   asset:effect/0371.tsukimi/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:entity/player/absorption/remove
