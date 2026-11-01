#> asset:effect/0435.waxing_gibbous/barrier/add
#
#
#
# @within function asset:effect/0435.waxing_gibbous/**

    data modify storage api: Argument.UUID set value [I;1,3,435,0]
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.WipedCallback set value "asset:effect/0435.waxing_gibbous/barrier/break"
    function api:entity/player/absorption/add
