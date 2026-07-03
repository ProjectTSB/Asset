#> asset:effect/374.charge_plasma/re-given/charge/3
#
#
#
# @within function asset:effect/374.charge_plasma/re-given/

# スタック数を増やす
    data modify storage asset:context Stack set value 3

# MP消費
    data modify storage api: Argument.Fluctuation set value -35
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation
