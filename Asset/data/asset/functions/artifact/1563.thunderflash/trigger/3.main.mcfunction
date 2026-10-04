#> asset:artifact/1563.thunderflash/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1563.thunderflash/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute anchored eyes positioned ^-0.3 ^-0.15 ^0.3 run particle electric_spark ~ ~ ~ 0 0 0 0.5 10 normal @a
    execute anchored eyes positioned ^ ^-0.5 ^0.25 run function asset:artifact/1563.thunderflash/trigger/sound

# ダメージ
    data modify storage api: Argument.FieldOverride.Damage set value {Min:600,Max:800}

# 射程(厳密には何m移動できるか×2)
    data modify storage api: Argument.FieldOverride.Range set value 16

# チャージ用エフェクト
    data modify storage api: Argument.ID set value 375
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
