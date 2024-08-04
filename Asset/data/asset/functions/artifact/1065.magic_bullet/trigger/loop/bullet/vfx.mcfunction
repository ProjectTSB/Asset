#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/vfx
#
# vfx
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/teleport

# 演出
    particle scrape ~ ~ ~ 0 0 0 30 150 normal @a
    playsound tsb_sounds:rifle_shot neutral @a ~ ~ ~ 2 0.8
    #playsound tsb_sounds:rifle_shot neutral @a ~ ~ ~ 2 0.8
    #playsound tsb_sounds:rifle_shot neutral @a ~ ~ ~ 1 0.7
    playsound block.fire.extinguish neutral @a ~ ~ ~ 1 1.2
    playsound block.fire.extinguish neutral @a ~ ~ ~ 1 1.3
    playsound minecraft:entity.warden.sonic_boom neutral @a ~ ~ ~ 0.3 2
    playsound minecraft:entity.warden.sonic_boom neutral @a ~ ~ ~ 0.15 1.9
    #playsound minecraft:entity.warden.sonic_boom neutral @a ~ ~ ~ 0.1 1.8
