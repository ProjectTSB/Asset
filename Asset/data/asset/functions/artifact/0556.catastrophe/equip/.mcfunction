#> asset:artifact/0556.catastrophe/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/556/equip

# 演出
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run function asset:artifact/0556.catastrophe/equip/vfx
