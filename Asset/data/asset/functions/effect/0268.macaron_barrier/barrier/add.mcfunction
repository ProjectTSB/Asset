#> asset:effect/0268.macaron_barrier/barrier/add
#
# バリアを付与する
#
# @within function asset:effect/0268.macaron_barrier/given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set value [I;1,3,268,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0268.macaron_barrier/barrier/break"
    function api:entity/player/absorption/add
