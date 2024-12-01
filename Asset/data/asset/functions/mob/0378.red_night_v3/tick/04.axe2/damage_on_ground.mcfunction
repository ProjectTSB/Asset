#> asset:mob/0378.red_night_v3/tick/04.axe2/damage_on_ground
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/04.axe2/damage

# OnGround取得
    function api:data_get/on_ground
# ダメージ
    execute if data storage api: {OnGround:1b} if entity @s[tag=!PlayerShouldInvulnerable] run function lib:damage/

# 上に飛ばす
    execute if predicate api:global_vars/difficulty/easy if data storage api: {OnGround:1b} run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"levitation",amplifier:60b,duration:3,show_particles:0b},{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
    execute if predicate api:global_vars/difficulty/normal if data storage api: {OnGround:1b} run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"levitation",amplifier:80b,duration:3,show_particles:0b},{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
    execute if predicate api:global_vars/difficulty/min/hard if data storage api: {OnGround:1b} run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"levitation",amplifier:100b,duration:3,show_particles:0b},{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
