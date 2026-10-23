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
        data modify storage api: Argument.Duration set value 20
    # ダメージは実際の10倍
        data modify storage api: Argument.FieldOverride.Damage set value {Min:500,Max:800}
    # 弾の設定 (Range/2 = 射程), (Speed×0.5 = 1tickに何ブロック進むか)
        data modify storage api: Argument.FieldOverride.Range set value 40
        data modify storage api: Argument.FieldOverride.Speed set value 5
    # 付与
        data modify storage api: Argument.ID set value 404
        function api:entity/mob/effect/give
        function api:entity/mob/effect/reset

# 落下ダメージ無効化
    data modify storage api: Argument.ID set value 190
    data modify storage api: Argument.Duration set value 50
    data modify storage api: Argument.Stack set value 10
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
