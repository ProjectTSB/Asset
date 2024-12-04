#> asset:artifact/0726.oblivious_snow/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/726/equip

# 部位数チェック
    data modify storage api: Argument.ID set value 243
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} run particle snowflake ~ ~0.4 ~ 0.4 0.1 0.4 0.1 50 normal @a
    execute unless data storage api: Return.Effect{Stack:4} run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
    execute unless data storage api: Return.Effect{Stack:4} run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0 0
