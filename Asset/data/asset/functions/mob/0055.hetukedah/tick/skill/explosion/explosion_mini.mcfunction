#> asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
#
# ハード限定ミニ爆発
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/explosion

# 演出
    particle minecraft:lava ~ ~ ~ 2 0.1 2 0 15
    particle minecraft:explosion ~ ~ ~ 1 0 1 0 3 force @a[distance=..30]

# ダメージ
    data modify storage api: Argument.Damage set value 6.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..2] run summon area_effect_cloud ~ ~ ~ {Particle:"poof",Radius:0.5f,Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:15b,duration:5,show_particles:1b}]}
    function api:damage/reset
