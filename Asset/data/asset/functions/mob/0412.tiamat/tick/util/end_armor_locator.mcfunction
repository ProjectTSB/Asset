#> asset:mob/0412.tiamat/tick/util/end_armor_locator
#
# 汎用処理 アーマー解除
#
# @within asset:mob/0412.tiamat/tick/util/end_armor

# エフェクト消去
    data modify storage api: Argument.ID set value 150
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
