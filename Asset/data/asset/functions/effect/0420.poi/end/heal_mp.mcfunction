#> asset:effect/0420.poi/end/heal_mp
#
#
#
# @within function asset:effect/0420.poi/end/

# MPを(スタック×this.MPHeal)回復
    execute store result score $MPHeal Temporary run data get storage asset:context this.MPHeal 10
    execute store result storage api: Argument.Fluctuation double 0.1 run scoreboard players operation $MPHeal Temporary *= $Stack Temporary
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation

# リセット
    tag @s remove 1646.LockOn
    tag @s remove 0420.Origin
