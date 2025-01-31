#> asset:effect/0230.farothdal/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0230.farothdal/_/re-given

data modify storage asset:context this merge from storage asset:context PreviousField
