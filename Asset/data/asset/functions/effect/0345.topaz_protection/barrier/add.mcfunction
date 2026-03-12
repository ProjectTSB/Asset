#> asset:effect/0345.topaz_protection/barrier/add
#
#
#
# @within function
#   asset:effect/0345.topaz_protection/given/
#   asset:effect/0345.topaz_protection/re-given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0345.topaz_protection/barrier/break"
    function api:entity/player/absorption/add
