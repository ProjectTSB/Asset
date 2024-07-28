#> asset:mob/0151.recombined/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0151.recombined/attack/1.trigger

# 演出
    playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 0.3 1.6
    playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 0.4 2

# ダメージ
    data modify storage api: Argument.Damage set value 25f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# デバフを付与
    data modify storage api: Argument.ID set value 602
    execute as @p[tag=Victim] run function api:entity/mob/effect/give

# 腕を振る
    item replace entity @s weapon with iron_axe
