#> asset:artifact/1632.photon_burst/trigger/attack/damage_range
#
#
#
# @within function asset:artifact/1632.photon_burst/trigger/attack/

# ダメージ
    execute store result storage api: Argument.Damage double 0.1 run random value 2000..3000
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
