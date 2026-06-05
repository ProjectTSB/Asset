#> asset:artifact/0027.bow_of_apollo/using_item/charge/get_current.m
# @input args ChargeState : int
# @within function asset:artifact/0027.bow_of_apollo/using_item/charge/

$data modify storage asset:temp R.Charge set from storage asset:temp R.Const.Charge[$(ChargeState)]
