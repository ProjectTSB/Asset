#> asset:artifact/1643.jet_booster/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1643.jet_booster/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# Effect 408を付与、MP計測開始
    data modify storage api: Argument.ID set value 408

    ## 攻撃情報
    # 最低ベクトル / 最低ダメージ(倍率2)
        data modify storage api: Argument.FieldOverride.MinMagnitude set value 100
    # 最大ベクトル / 最大ダメージ(倍率2)
        data modify storage api: Argument.FieldOverride.MaxMagnitude set value 500

    # MP差1ごとのダメージ(倍率0.01)
        data modify storage api: Argument.FieldOverride.Multiplier set value 200

    # 攻撃範囲とMP消費の基準値
        data modify storage api: Argument.FieldOverride.Range set value {0:3,1:6,2:8}
        data modify storage api: Argument.FieldOverride.Border set value {1:100,2:150}

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound entity.tnt.primed player @a ~ ~ ~ 1.0 0.5
    playsound ogg:block.vault.eject3 player @a ~ ~ ~ 1.0 1.0
    particle campfire_signal_smoke ~ ~1 ~ 0.1 0.5 0.1 0.05 10
