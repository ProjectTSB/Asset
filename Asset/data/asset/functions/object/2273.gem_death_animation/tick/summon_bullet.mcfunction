#> asset:object/2273.gem_death_animation/tick/summon_bullet
#
# Objectのtick時の処理
#
# @within function asset:object/2273.gem_death_animation/tick/event

# 演出召喚
    data modify storage api: Argument.ID set value 2274
    execute rotated 0 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 30 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 60 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 90 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 120 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 150 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 180 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 210 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 240 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 270 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 300 -80 run function api:object/summon
    data modify storage api: Argument.ID set value 2274
    execute rotated 330 -80 run function api:object/summon
