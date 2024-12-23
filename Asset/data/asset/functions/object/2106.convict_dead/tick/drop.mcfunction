#> asset:object/2106.convict_dead/tick/drop
#
#
#
# @within function asset:object/2106.convict_dead/tick/

# ボスドロ
    data modify storage api: Argument.ID set value 1028
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    data modify storage api: Argument.ID set value 1029
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
