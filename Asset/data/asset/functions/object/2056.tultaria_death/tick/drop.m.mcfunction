#> asset:object/2056.tultaria_death/tick/drop.m
#
# @input args:
#   X : double
#   Y : double
#   Z : double
# @within function asset:object/2056.tultaria_death/tick/end

    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.Important set value true
    $execute positioned $(X) $(Y) $(Z) positioned ~ ~1 ~ run function api:artifact/spawn/from_id
