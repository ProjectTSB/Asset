#> asset:mob/0377.grey_guardian_v2/tick/03.axe1/spin_damage
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/03.axe1/main


# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    function asset:mob/0377.grey_guardian_v2/tick/03.axe1/particle


# ダメージ
    data modify storage api: Argument.Damage set value 15.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..6] at @s run function api:damage/
    function api:damage/reset
