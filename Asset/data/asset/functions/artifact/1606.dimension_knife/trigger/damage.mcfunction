#> asset:artifact/1606.dimension_knife/trigger/damage
#
# ダメージの諸々
#
# @within function asset:artifact/1606.dimension_knife/trigger/3.main

# バフがあるなら、MP回復量に補正をかける
    execute if data storage api: Return.Effect store result storage api: Argument.AdditionalMPHeal double 0.01 run data get storage api: PersistentArgument.AdditionalMPHeal 120

# 本体
    execute store result storage api: Argument.Damage double 1 run random value 80..150
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset
