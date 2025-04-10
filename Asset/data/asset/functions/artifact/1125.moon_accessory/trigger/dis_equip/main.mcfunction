#> asset:artifact/1125.moon_accessory/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1125.moon_accessory/trigger/dis_equip/

# 演出
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# エフェクト付与
    data modify storage api: Argument.ID set value 275
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
