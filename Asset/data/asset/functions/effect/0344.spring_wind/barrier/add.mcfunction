#> asset:effect/0344.spring_wind/barrier/add
#
#
#
# @within function
#   asset:effect/0344.spring_wind/given/
#   asset:effect/0344.spring_wind/re-given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0344.spring_wind/barrier/break"
    function api:entity/player/absorption/add
