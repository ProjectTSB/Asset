#> asset:effect/0268.macaron_barrier/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0268.macaron_barrier/end/
#   asset:effect/0268.macaron_barrier/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:entity/player/absorption/remove
