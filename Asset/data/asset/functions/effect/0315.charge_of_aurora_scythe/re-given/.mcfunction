#> asset:effect/0315.charge_of_aurora_scythe/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0315.charge_of_aurora_scythe/_/re-given

# ダメージとMP回復のデータ引き継ぎ
    data modify storage asset:context this.Damage set from storage asset:context PreviousField.Damage
    data modify storage asset:context this.AdditionalMPHeal set from storage asset:context PreviousField.AdditionalMPHeal
