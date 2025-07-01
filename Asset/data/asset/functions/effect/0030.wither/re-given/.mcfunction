#> asset:effect/0030.wither/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0030.wither/_/re-given

data modify storage asset:context this.Tick set from storage asset:context PreviousField.Tick
