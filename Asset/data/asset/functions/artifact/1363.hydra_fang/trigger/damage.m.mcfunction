#> asset:artifact/1363.hydra_fang/trigger/damage.m
#
#
#
# @within function asset:artifact/1363.hydra_fang/trigger/recursive

# 自身のステータス補正を無視するダメージ
    execute store result storage api: Argument.Damage float 0.015 run data get storage asset:temp Temp.Amounts[-1] 100
    data modify storage api: Argument.AttackType set from storage asset:context Attack.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context Attack.ElementType
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value false
    $execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,scores={MobUUID=$(MobUUID)},distance=..64,limit=1] run function api:damage/
    function api:damage/reset
