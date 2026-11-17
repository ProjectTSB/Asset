#> asset:artifact/1619.volt_rave/dis_equip/2.main
#
# 装備解除時にチャージを解除する
#
# @within function asset:artifact/1619.volt_rave/dis_equip/1.trigger

# チャージ用Effectを削除する
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
