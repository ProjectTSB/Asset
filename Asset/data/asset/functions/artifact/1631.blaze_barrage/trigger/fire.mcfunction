#> asset:artifact/1631.blaze_barrage/trigger/fire
#
#
#
# @within function asset:artifact/1631.blaze_barrage/trigger/3.main

# 発射が可能になるエフェクトを削除
    data modify storage api: Argument.ID set value 403
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 発射用エフェクト付与
# 弾数 = Duration
# ダメージは実際の10倍
    data modify storage api: Argument.ID set value 404
    data modify storage api: Argument.Duration set value 20
    data modify storage api: Argument.FieldOverride.Damage set value {Min:500,Max:800}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
