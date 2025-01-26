#> asset:mob/0378.red_knight_v3/tick/02.skill_plunge/damage
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/main

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1

# ダメージ設定
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] at @s run function api:damage/
# リセット
    function api:damage/reset
