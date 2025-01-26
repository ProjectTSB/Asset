#> asset:artifact/1122.guardian_ironlump/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1122.guardian_ironlump/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# リセット処理
    function asset:artifact/1122.guardian_ironlump/trigger/removal

    attribute @s minecraft:generic.armor modifier add 1-0-1-0-46200000007 "1122" 1 add
    attribute @s minecraft:generic.knockback_resistance modifier add 1-0-1-0-46200000007 "1122" 99 add

# 防御力+5%
    data modify storage api: Argument.UUID set value [I;1,1,1122,7]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 演出
    particle block iron_block ~ ~1 ~ 0.3 0.3 0.3 0 20
    playsound entity.iron_golem.death player @a ~ ~ ~ 1 2
    playsound minecraft:entity.skeleton.converted_to_stray player @a ~ ~ ~ 1 0
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
