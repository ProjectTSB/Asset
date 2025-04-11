#> asset:artifact/0643.raimei_chestplate/trigger/fullset/dis_equip/
#
# フルセット効果を消す
#
# @within function asset:artifact/????.raimei_*/trigger/dis_equip/main

# タグを消す
    tag @s remove HV.Full

# フルセット耐性を消す
    data modify storage api: Argument.UUID set value [I;1,1,643,0]
# 補正の追加
    function api:modifier/defense/thunder/remove

# フルセット用バフ解除
    data modify storage api: Argument.ID set value 238
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
