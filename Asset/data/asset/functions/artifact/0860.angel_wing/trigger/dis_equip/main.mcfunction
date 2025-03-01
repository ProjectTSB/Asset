#> asset:artifact/0860.angel_wing/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0860.angel_wing/trigger/dis_equip/

# バフ解除
    data modify storage api: Argument.ID set value 310
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
