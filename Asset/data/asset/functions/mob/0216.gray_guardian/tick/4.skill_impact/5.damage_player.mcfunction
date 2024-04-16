#> asset:mob/0216.gray_guardian/tick/4.skill_impact/5.damage_player
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_impact/4.damage

# OnGround取得
    function api:data_get/on_ground
# ダメージ
    execute if data storage api: {OnGround:1b} run function lib:damage/

# 上に飛ばす
    execute if data storage api: {OnGround:1b} run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"levitation",amplifier:80b,duration:3,show_particles:0b},{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}