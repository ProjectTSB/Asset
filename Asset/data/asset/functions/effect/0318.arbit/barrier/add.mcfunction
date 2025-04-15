#> asset:effect/0318.arbit/barrier/add
#
#
#
# @within function
#   asset:effect/0318.arbit/given/
#   asset:effect/0318.arbit/re-given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set value [I;1,3,318,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0318.arbit/barrier/break"
    function api:entity/player/absorption/add
