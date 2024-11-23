#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/shoot
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/

# vfx
    function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/vfx
    execute as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.8
    execute as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.6


# 発射
    function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/recursive
    scoreboard players reset $Recursive Temporary
