#> asset:effect/0428.curse_of_power/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0428.curse_of_power/_/re-given.

# Field引き継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField
