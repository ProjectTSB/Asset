#> asset:object/1208.osmanthus_scent/kill/attack.m
#
# 半径2mの敵へダメージを与え、近い順に最大MaxDebuffTargets体へEffectを付与する
#
# @input args:
#   MaxDebuffTargets : int
# @within function asset:object/1208.osmanthus_scent/kill/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.MPHeal
    function api:damage/modifier
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/single_damage_session/close
    function api:damage/reset

# 爆心に近い順に最大MaxDebuffTargets体へ金木犀の香りを付与する
    data modify storage api: Argument.ID set value 421
    data modify storage api: Argument.Duration set from storage asset:context this.DebuffDuration
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.MPHeal set from storage asset:context this.MPHeal
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.SecondRate set from storage asset:context this.SecondRate
    data modify storage api: Argument.FieldOverride.SecondRadius set from storage asset:context this.SecondRadius
    $execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,distance=..3,sort=nearest,limit=$(MaxDebuffTargets)] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
