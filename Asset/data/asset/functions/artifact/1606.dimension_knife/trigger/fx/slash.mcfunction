#> asset:artifact/1606.dimension_knife/trigger/fx/slash
#
#
#
# @within function asset:artifact/1606.dimension_knife/trigger/fx/

# playsound
    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.1
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.7 1.6
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.7 1.4

# 演出用Object
    # FieldOverride
        data modify storage api: Argument.FieldOverride set value {Frames:[20647,20648,20649],Scale:[3.5f,3.5f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],    right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Item:{id:"minecraft:stick",Count:1b}}
    # left_rotationだけAttackCountに応じて変える
        execute if score @s 18M.AttackCount matches 1 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.377f,-0.5982f,0.2086f,0.6756f]
        execute if score @s 18M.AttackCount matches 2 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.2761f,-0.651f,-0.4358f,0.5569f]
        execute if score @s 18M.AttackCount matches 3 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.5915f,-0.3875f,0.4705f,0.5279f]
    # 召喚
        data modify storage api: Argument.ID set value 2001
        execute rotated ~ ~-3 run function api:object/summon
