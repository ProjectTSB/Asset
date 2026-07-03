#> asset:effect/374.charge_plasma/re-given/charge/2
#
#
#
# @within function asset:effect/374.charge_plasma/re-given/

# スタック数を増やす
    data modify storage asset:context Stack set value 2

# MP消費
    data modify storage api: Argument.Fluctuation set value -25
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation
