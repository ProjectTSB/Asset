#> asset:artifact/1315.dolphin_dive/trigger/predicate/on_ground
#
#
#
# @within function asset:artifact/1315.dolphin_dive/trigger/2.check_condition

# OnGround:1bなら成功
    function api:data_get/on_ground
    execute if data storage api: {OnGround:true} run return 1
