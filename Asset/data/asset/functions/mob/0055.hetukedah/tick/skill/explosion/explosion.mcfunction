#> asset:mob/0055.hetukedah/tick/skill/explosion/explosion
#
# 魔法陣爆発
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 演出
    function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/shape
    particle minecraft:lava ~ ~ ~ 2 0.1 2 0 30
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
    playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
    execute if predicate api:global_vars/difficulty/min/hard run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 2

# ハメ防止
    execute if predicate api:area/is_breakable run function asset:mob/0055.hetukedah/tick/skill/explosion/break_block

# ハードだと追加で爆発を起こす
    execute if predicate api:global_vars/difficulty/min/hard rotated ~0 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~45 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-45 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~90 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-90 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~135 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-135 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/hard rotated ~180 ~ positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini

# ダメージ
    data modify storage api: Argument.Damage set value 12.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run summon area_effect_cloud ~ ~ ~ {Particle:"poof",Radius:0.5f,Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:30b,duration:5,show_particles:1b}]}
    function api:damage/reset
