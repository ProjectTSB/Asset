#> asset:effect/0345.topaz_protection/barrier/remove
#
#
#
# @within function
#   asset:effect/0345.topaz_protection/end/
#   asset:effect/0345.topaz_protection/re-given/
#   asset:effect/0345.topaz_protection/remove/

# バリア削除
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:entity/player/absorption/remove
