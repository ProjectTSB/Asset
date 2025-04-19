#> asset:artifact/1125.moon_accessory/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1125.moon_accessory/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 0.5 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.5 1
    playsound ogg:random.levelup player @a ~ ~ ~ 0.6 2
    particle dust 1 0.929 0.278 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle enchanted_hit ~ ~1 ~ 0 0 0 0.5 10

# エフェクト付与
    data modify storage api: Argument.ID set value 275
    data modify storage api: Argument.FieldOverride.RegenInterval set value 120
    data modify storage api: Argument.FieldOverride.MaxBarrierAmount set value 12
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
