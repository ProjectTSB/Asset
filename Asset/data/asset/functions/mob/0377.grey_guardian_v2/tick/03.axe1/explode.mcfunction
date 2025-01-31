#> asset:mob/0377.grey_guardian_v2/tick/03.axe1/explode
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/03.axe1/main


# 爆発演出
    particle explosion ~ ~ ~ 3.6 3.4 3.6 0 40 normal @a
    particle lava ~ ~ ~ 3 3.4 3 0 50 normal @a
    particle cloud ~ ~ ~ 0 0 0 0.5 250 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1.3 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 0.7 0

# ダメージ
    data modify storage api: Argument.Damage set value 18f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset
