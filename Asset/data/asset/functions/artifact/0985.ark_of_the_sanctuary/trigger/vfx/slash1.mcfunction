#> asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/slash1
#
#
#
# @within function
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/rapid_slash

# 演出
    function asset:artifact/0985.ark_of_the_sanctuary/trigger/vfx/sound

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:potion"},Frames:[20242,20243,20244],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.627f,-0.327f,0.213f,0.674f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon
