#> asset:artifact/0556.catastrophe/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0556.catastrophe/equip/2.check_condition

# 演出
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run function asset:artifact/0556.catastrophe/equip/vfx
