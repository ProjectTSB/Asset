#> asset:effect/0418.drowning/tick/fluctuation
#
#
#
# @within function asset:effect/0418.drowning/tick/

# 消費
    data modify storage api: Argument.Fluctuation set value -1
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation

# リセット
    data modify storage asset:context this.Interval set value 2
