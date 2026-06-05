#> asset:effect/0363.barrier10/barrier/add
#
# バリアを付与する
#
# @within function
#   asset:effect/0363.barrier10/given/
#   asset:effect/0363.barrier10/re-given/

# バリア
    data modify storage api: Argument.Amount set value 10
    data modify storage api: Argument.UUID set value [I;1,3,363,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value ""
    function api:entity/player/absorption/add
