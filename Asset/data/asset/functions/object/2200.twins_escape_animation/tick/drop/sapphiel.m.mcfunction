#> asset:object/2200.twins_escape_animation/tick/drop/sapphiel.m
#
#
#
# @within function asset:object/2200.twins_escape_animation/tick/remove_sapphiel

    data modify storage api: Argument.ID set value 1079
    data modify storage api: Argument.Important set value true
    $execute positioned $(X) $(Y) $(Z) positioned ~-0.7 ~1.5 ~2 run function api:artifact/spawn/from_id
