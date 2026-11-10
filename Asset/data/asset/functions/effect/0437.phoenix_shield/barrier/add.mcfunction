#> asset:effect/0437.phoenix_shield/barrier/add
#
# バリアを付与する
#
# @within function
#   asset:effect/0437.phoenix_shield/given/
#   asset:effect/0437.phoenix_shield/re-given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set value [I;1,3,437,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0437.phoenix_shield/barrier/break"
    function api:entity/player/absorption/add
