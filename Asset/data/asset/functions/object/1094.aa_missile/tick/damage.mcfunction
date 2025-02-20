#> asset:object/1094.aa_missile/tick/damage
#
# 
#
# @within function asset:object/1094.aa_missile/tick/hit

# ダメージ
    execute if score @s General.Object.Tick matches ..6 run data modify storage api: Argument.Damage set value 600.0f
    execute if score @s General.Object.Tick matches 7.. run data modify storage api: Argument.Damage set value 3000.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    $execute as @p[scores={UserID=$(UserID)}] run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# particle
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.03 100
    particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.05 100
