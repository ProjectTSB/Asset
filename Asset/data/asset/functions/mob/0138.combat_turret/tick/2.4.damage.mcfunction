#> asset:mob/0138.combat_turret/tick/2.4.damage
#
# ダメージを与えます
#
# @within function asset:mob/0138.combat_turret/tick/2.3.shot

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# ダメージ
    data modify storage api: Argument.Damage set value 9.7f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @p[gamemode=!creative,tag=LandingTarget,distance=..30] at @s run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50] remove LandingTarget
