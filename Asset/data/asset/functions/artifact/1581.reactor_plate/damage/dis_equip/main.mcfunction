#> asset:artifact/1581.reactor_plate/damage/dis_equip/main
#
# オフハンドに隠すと暴発を防げちゃうのでいっそ排熱されるようにする
#
# @within function asset:artifact/1581.reactor_plate/damage/dis_equip/

# 特定 ID の Effect 情報を取得
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/get/from_id
# スタックがないなら
    execute unless data storage api: Return.Effect run return fail
# 演出
    function asset:artifact/1581.reactor_plate/damage/vfx/exhaust
# 削除
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
