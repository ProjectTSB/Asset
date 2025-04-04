#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/alert
#
# 警告…というか、本当にヤバいと示すものなので、いつもの丸範囲とちょっと挙動が違う
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/tick

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [60f,60f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 5
    data modify storage api: Argument.ID set value 2063
    execute positioned ~ ~0.1 ~ run function api:object/summon
