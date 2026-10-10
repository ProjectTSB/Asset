#> asset:effect/0375.charge_of_thunderflash/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0375.charge_of_thunderflash/_/re-given

# PreviousField引継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField
