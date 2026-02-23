#> asset:artifact/1076.death_snap/trigger/damage
#
#
#
# @within function asset:artifact/1076.death_snap/trigger/3.main

# ダメージ
    data modify storage api: Argument.Damage set value 155.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=TW.Hit,tag=!Uninterferable,distance=..30] run function api:damage/
# リセット
    function api:damage/reset
