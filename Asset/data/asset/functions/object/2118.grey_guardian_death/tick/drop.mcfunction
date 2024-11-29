#> asset:object/2118.grey_guardian_death/tick/drop
#
#
#
# @within function asset:object/2118.grey_guardian_death/tick/

# ボスドロ
    data modify storage api: Argument.ID set value 1122
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    data modify storage api: Argument.ID set value 1017
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
