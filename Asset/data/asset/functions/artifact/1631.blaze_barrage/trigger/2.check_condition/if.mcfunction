#> asset:artifact/1631.blaze_barrage/trigger/2.check_condition/if
#
#
#
# @within function asset:artifact/1631.blaze_barrage/trigger/2.check_condition

# 発動条件は
# (自身が地上にいる || (自身に固有バフ(ID:403)がある && 一定以上浮いている))

# OnGroundをチェック
    function api:data_get/on_ground

# 地上にいるなら成功
    execute if data storage api: {OnGround:1b} run return 1

# バフチェック
    data modify storage api: Argument.ID set value 403
    function api:entity/mob/effect/get/from_id

# 自身にバフがあるとき、空中にいれば成功
    execute if data storage api: Return.Effect if data storage api: {OnGround:0b} run return 1

# 失敗
    return 0
