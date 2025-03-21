#> asset:object/1095.ag_missile/tick/damage
#
# 
#
# @within function asset:object/1095.ag_missile/tick/hit

# ダメージ
    execute if score @s General.Object.Tick matches ..6 run data modify storage api: Argument.Damage set from storage asset:context this.InitMotionDamage
    execute if score @s General.Object.Tick matches 7.. run data modify storage api: Argument.Damage set from storage asset:context this.MaxDamage
    data modify storage api: Argument.AttackType set value "Physical"
    $execute as @p[scores={UserID=$(UserID)}] run function api:damage/modifier

    #敵の耐性だけ貫通するためだけにここでBypassModifierをONにする
    data modify storage api: Argument.BypassModifier set value true
    $execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,scores={MobUUID=$(TargetID)},dx=0] run function api:damage/
    function api:damage/reset

# particle
    particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.03 100 force
    particle minecraft:large_smoke ~ ~ ~ 0.6 0.6 0.6 0.05 100 force
