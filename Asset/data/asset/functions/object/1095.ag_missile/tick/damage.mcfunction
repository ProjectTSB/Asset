#> asset:object/1095.ag_missile/tick/damage
#
# 
#
# @within function asset:object/1095.ag_missile/tick/hit

# ダメージ
    execute if score @s General.Object.Tick matches ..6 run data modify storage api: Argument.Damage set value 1100.0f
    execute if score @s General.Object.Tick matches 7.. run data modify storage api: Argument.Damage set value 5500.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    $execute as @p[scores={UserID=$(UserID)}] run function api:damage/modifier
    $execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[scores={MobUUID=$(TargetID)},dx=0] run function api:damage/
    function api:damage/reset

# particle
    particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.03 100 force
    particle minecraft:large_smoke ~ ~ ~ 0.6 0.6 0.6 0.05 100 force
