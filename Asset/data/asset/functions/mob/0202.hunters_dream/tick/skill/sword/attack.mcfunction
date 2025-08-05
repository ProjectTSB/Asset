#> asset:mob/0202.hunters_dream/tick/skill/sword/attack
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/sword/


# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2 0 0 0 1 2 normal
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set value 12.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned ^ ^ ^1 as @p[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# 演出
    execute positioned ^ ^ ^1 as @p[tag=!PlayerShouldInvulnerable,distance=..2.5] at @s run function asset:mob/0202.hunters_dream/tick/skill/sword/vfx
