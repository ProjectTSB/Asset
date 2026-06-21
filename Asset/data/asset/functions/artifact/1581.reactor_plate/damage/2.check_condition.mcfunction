#> asset:artifact/1581.reactor_plate/damage/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1581.reactor_plate/damage/1.trigger


# 他にアイテム等確認する場合はここに書く
# Dotでは反応しない
    execute if data storage asset:context Attack{IsDoT:true} run return fail
# 特定 ID の Effect 情報を取得
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/get/from_id
# エフェクトがないなら終わり
    execute unless data storage api: Return.Effect run return fail
# 3.main.mcfunctionを実行する
    function asset:artifact/1581.reactor_plate/damage/3.main
