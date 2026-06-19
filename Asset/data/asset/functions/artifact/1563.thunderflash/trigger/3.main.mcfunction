#> asset:artifact/1563.thunderflash/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1563.thunderflash/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 1段目ダメージ (10倍)
    data modify storage api: Argument.FieldOverride.Damage.First set value {Min:3000,Max:4000}

# 2段目ダメージ (10倍)
    data modify storage api: Argument.FieldOverride.Damage.Second set value {Min:5000,Max:6000}

# チャージ時間 (最大までチャージで2段目が発動)
    data modify storage api: Argument.FieldOverride.RequireChargeTick set value 20

# チャージ用エフェクト
    data modify storage api: Argument.ID set value 375
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
