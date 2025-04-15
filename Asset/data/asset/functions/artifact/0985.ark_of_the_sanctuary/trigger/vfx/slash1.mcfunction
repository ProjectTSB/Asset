#> asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash1
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.8
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.5
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:potion"},Frames:[20242,20243,20244],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.627f,-0.327f,0.213f,0.674f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon
