#> asset:mob/0120.convict/tick/1.axe/3.impact
#
#
#
# @within function asset:mob/0120.convict/tick/1.axe/1.axe

# 爆発演出
    particle explosion ~ ~ ~ 0.6 0.4 0.6 0 10 normal @a
    particle lava ~ ~ ~ 1 0.4 1 0 50 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 18f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..2.3] run function api:damage/
    function api:damage/reset
