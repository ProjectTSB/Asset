#> asset:effect/0029.poison/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0029.poison/_/re-given

data modify storage asset:context this.Tick set from storage asset:context PreviousField.Tick
