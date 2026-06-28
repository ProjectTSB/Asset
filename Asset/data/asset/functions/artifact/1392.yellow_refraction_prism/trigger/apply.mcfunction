#> asset:artifact/1392.yellow_refraction_prism/trigger/apply
#
#
#
# @within function asset:artifact/1392.yellow_refraction_prism/trigger/3.main

# 自身にTagを付与しておく
    tag @s add Target

# 事前処理
    data modify storage asset:temp Temp.To set from storage asset:context Attack.To
    data modify storage asset:temp Temp.Amounts set from storage asset:context Attack.Amounts
    function asset:artifact/1392.yellow_refraction_prism/trigger/recursive
    scoreboard players reset $TempID Temporary

# ダメージ
# 自身の補正は適用されない
    execute store result storage api: Argument.Damage double 0.001 run data get storage asset:temp Temp.Damage 100
    data modify storage api: Argument.AttackType set from storage asset:context Attack.AttackType
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.BypassModifier set value true
    execute as @p[tag=this] run function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value false
    function api:damage/
    function api:damage/reset
