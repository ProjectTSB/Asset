#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/tick

#> Val
# @private
    #declare tag ReserveReversed
    #declare tag Reversed

# 3度曲げる
    scoreboard players add @s 1A.Yaw 3
    execute if score @s 1A.Yaw matches ..90 rotated ~ ~-000 run tp @s ~ ~ ~ ~ ~3
    execute if score @s 1A.Yaw matches 91.. rotated ~ ~-180 run tp @s ~ ~ ~ ~ ~3
    execute if score @s 1A.Yaw matches 91.. if entity @s[tag=!Reversed] run tag @s add ReserveReversed
    execute if score @s 1A.Yaw matches 91.. if entity @s[tag=Reversed] run tag @s remove Reversed
    execute if score @s 1A.Yaw matches 91.. run scoreboard players remove @s 1A.Yaw 180

    execute if entity @s[tag=ReserveReversed] run tag @s add Reversed
    execute if entity @s[tag=ReserveReversed] run tag @s remove ReserveReversed
# VFX
    execute if entity @s[tag=!Reversed] at @s rotated ~ ~90 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/clockhand
    execute if entity @s[tag=Reversed] at @s rotated ~ ~-90 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/clockhand
    execute rotated ~ 90 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/vfx/circle

# 生存時間加算
    scoreboard players add @s 1A.LifeTime 1
    execute if score @s 1A.LifeTime matches 108 if predicate api:global_vars/difficulty/max/normal rotated ~90 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/pre_fire_aoe.m {InterpolationTime:9,VisibleTime:12}
    execute if score @s 1A.LifeTime matches 114 if predicate api:global_vars/difficulty/min/3_blessless rotated ~90 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/pre_fire_aoe.m {InterpolationTime:3,VisibleTime:6}
    execute if score @s 1A.LifeTime matches 120.. rotated ~90 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/fire
    execute if score @s 1A.LifeTime matches 120.. run kill @s
