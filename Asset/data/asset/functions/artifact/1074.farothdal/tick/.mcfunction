#> asset:artifact/1074.farothdal/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1074/tick/

# 効果
    data modify storage api: Argument.ID set value 230
    function api:entity/mob/effect/give

# うるさいから音消す
    stopsound @a[distance=..5] * item.armor.equip_leather
