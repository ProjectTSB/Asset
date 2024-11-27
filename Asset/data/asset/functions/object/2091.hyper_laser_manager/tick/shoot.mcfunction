#> asset:object/2091.hyper_laser_manager/tick/shoot
#
#
#
# @within function asset:object/2091.hyper_laser_manager/tick/

# vfx
    function asset:object/2091.hyper_laser_manager/tick/vfx
    execute as @a[distance=..30] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.8
    execute as @a[distance=..30] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.6

# 発射
    function asset:object/2091.hyper_laser_manager/tick/recursive
    scoreboard players reset $Recursive Temporary
