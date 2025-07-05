#> asset:object/2251.wall_laser_clock/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2251/tick

#> Private
# @private
    #declare tag Reversed
    #declare tag ReserveReversed

# 3度曲げる
    scoreboard players add @s 2251.Yaw 3
    execute if score @s 2251.Yaw matches ..90 rotated ~ ~-000 run tp @s ~ ~ ~ ~ ~3
    execute if score @s 2251.Yaw matches 91.. rotated ~ ~-180 run tp @s ~ ~ ~ ~ ~3
    execute if score @s 2251.Yaw matches 91.. if entity @s[tag=!Reversed] run tag @s add ReserveReversed
    execute if score @s 2251.Yaw matches 91.. if entity @s[tag=Reversed] run tag @s remove Reversed
    execute if score @s 2251.Yaw matches 91.. run scoreboard players remove @s 2251.Yaw 180

    execute if entity @s[tag=ReserveReversed] run tag @s add Reversed
    execute if entity @s[tag=ReserveReversed] run tag @s remove ReserveReversed
# VFX
    execute if entity @s[tag=!Reversed] at @s rotated ~ ~90 run function asset:object/2251.wall_laser_clock/tick/vfx/clockhand
    execute if entity @s[tag=Reversed] at @s rotated ~ ~-90 run function asset:object/2251.wall_laser_clock/tick/vfx/clockhand
    execute rotated ~ 90 run function asset:object/2251.wall_laser_clock/tick/vfx/circle

# 生存時間加算
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 108 if predicate api:global_vars/difficulty/max/2_hard rotated ~90 0 run function asset:object/2251.wall_laser_clock/tick/pre_fire_aoe.m {InterpolationTime:9,VisibleTime:12}
    execute if score @s General.Object.Tick matches 114 if predicate api:global_vars/difficulty/min/3_blessless rotated ~90 0 run function asset:object/2251.wall_laser_clock/tick/pre_fire_aoe.m {InterpolationTime:3,VisibleTime:6}
    execute if score @s General.Object.Tick matches 120.. rotated ~90 0 run function asset:object/2251.wall_laser_clock/tick/fire
    execute if score @s General.Object.Tick matches 120.. run kill @s
