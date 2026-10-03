#> asset:artifact/1632.photon_burst/trigger/attack/damage_range
#
#
#
# @within function asset:artifact/1632.photon_burst/trigger/attack/

# ダメージ
    execute store result storage api: Argument.Damage double 1 run random value 200..300
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
