#> asset:artifact/0797.heartbleed/trigger/damage
#
#
#
# @within function asset:artifact/0797.heartbleed/trigger/bleed

# ダメージ
    data modify storage api: Argument.Damage set value 220.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=M5.Victim,distance=..5] run function api:damage/
    function api:damage/reset
