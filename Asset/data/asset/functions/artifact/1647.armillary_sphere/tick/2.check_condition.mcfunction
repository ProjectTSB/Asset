#> asset:artifact/1647.armillary_sphere/tick/2.check_condition
#
#
#
# @within function asset:artifact/1647.armillary_sphere/tick/1.trigger

# Effect426が消えているなら実行
    data modify storage api: Argument.ID set value 426
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run function asset:artifact/1647.armillary_sphere/tick/3.main
