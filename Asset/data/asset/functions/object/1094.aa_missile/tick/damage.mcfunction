#> asset:object/1094.aa_missile/tick/damage
#
# 
#
# @within function asset:object/1094.aa_missile/tick/hit

# ダメージ
    execute if score @s General.Object.Tick matches ..6 run data modify storage api: Argument.Damage set from storage asset:context this.InitMotionDamage
    execute if score @s General.Object.Tick matches 7.. run data modify storage api: Argument.Damage set from storage asset:context this.MaxDamage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    $execute as @p[scores={UserID=$(UserID)}] run function api:damage/modifier
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=4,dy=4,dz=4] run function api:damage/
    function api:damage/reset

# particle
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.03 100
    particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.05 100
