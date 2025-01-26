#> asset:object/2105.lexiel_death/tick/drop
#
#
#
# @within function asset:object/2105.lexiel_death/tick/

# ボスドロ
    data modify storage api: Argument.ID set value 927
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    data modify storage api: Argument.ID set value 1112
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
