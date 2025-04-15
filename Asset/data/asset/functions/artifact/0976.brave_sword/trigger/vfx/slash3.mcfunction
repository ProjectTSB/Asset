#> asset:artifact/0976.brave_sword/trigger/vfx/slash3
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/3.main

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.8
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.5

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8908799,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.271f,-0.653f,0.271f,0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon
