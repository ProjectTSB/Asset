#> asset:effect/0420.poi/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0420.poi/_/re-given

# MP回復量引き継ぎ
    data modify storage asset:context this.MPHeal set from storage asset:context PreviousField.MPHeal
