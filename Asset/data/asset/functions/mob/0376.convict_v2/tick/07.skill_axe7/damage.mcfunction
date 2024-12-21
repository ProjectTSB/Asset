#> asset:mob/0376.convict_v2/tick/07.skill_axe7/damage
#
#
#
# @within function
#   asset:mob/0376.convict_v2/tick/07.skill_axe7/main
#   asset:mob/0376.convict_v2/tick/07.skill_axe7/main_hard

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ設定
    data modify storage api: Argument.Damage set value 10.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6.7] at @s run function api:damage/
# リセット
    function api:damage/reset

# エフェクト
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6.7] run function asset:mob/0376.convict_v2/tick/common/effect
