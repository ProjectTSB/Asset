#> asset:object/1153.flare_butterfly/tick/attack/damage/
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/attack/attack

# 体力が50%か否かでダメージ範囲を変える
    execute if score $HealthPer Temporary matches 50.. run function asset:object/1153.flare_butterfly/tick/attack/damage/range.m with storage asset:context this.Damage.Default
    execute unless score $HealthPer Temporary matches 50.. run function asset:object/1153.flare_butterfly/tick/attack/damage/range.m with storage asset:context this.Damage.LowHealthPer
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=1153.Owner] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
