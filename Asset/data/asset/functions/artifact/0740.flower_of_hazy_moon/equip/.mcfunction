#> asset:artifact/0740.flower_of_hazy_moon/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/740/equip/


# 演出
    particle end_rod ~ ~1.3 ~ 0 0 0 0.05 10 normal @a
    particle end_rod ~ ~1.3 ~ 0 0 0 0.075 70 normal @a
    particle campfire_cosy_smoke ~ ~1.3 ~ 0.2 0.2 0.2 0.1 10 normal @a
    particle campfire_cosy_smoke ~ ~1.3 ~ 0.2 0.2 0.2 0.15 70 normal @a
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 0.5

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,1,740,7]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,740,7]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/receive_heal/add

# 効果付与のフラグ設定
    tag @s add KK.Modifier
