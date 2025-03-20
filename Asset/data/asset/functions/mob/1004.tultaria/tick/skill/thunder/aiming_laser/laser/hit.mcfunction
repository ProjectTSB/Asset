#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/hit
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 0
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 20
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1.5

# ダメージ
    data modify storage api: Argument.Damage set value 15.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
