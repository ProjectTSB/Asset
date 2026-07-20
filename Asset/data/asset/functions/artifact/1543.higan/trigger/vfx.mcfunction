#> asset:artifact/1543.higan/trigger/vfx
#
#
#
# @within function asset:artifact/1543.higan/trigger/3.main

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:stick",Count:1b},Frames:[20637,20638,20639],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute rotated ~ ~-2 run function api:object/summon

#
    playsound entity.glow_squid.squirt player @a ~ ~ ~ 1 2 0
    playsound item.trident.throw player @a ~ ~ ~ 1 0.9
    playsound entity.guardian.ambient player @a ~ ~ ~ 1 0.8
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 1.4
    playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.4 2
