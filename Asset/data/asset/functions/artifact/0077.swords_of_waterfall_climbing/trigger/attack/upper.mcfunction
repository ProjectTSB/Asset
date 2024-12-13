#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/upper
#
# 切り上げ
#
# @within function asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.main

# 演出
    function asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/vfx

# 浮遊を付与
    execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"levitation",amplifier:100b,duration:2,show_particles:0b}]}
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"levitation",amplifier:127b,duration:2,show_particles:0b}]}

# ダメージ
    data modify storage api: Argument.Damage set value 45f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01] run function api:damage/
    function api:damage/reset
