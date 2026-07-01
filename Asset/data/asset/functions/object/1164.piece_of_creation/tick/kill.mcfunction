#> asset:object/1164.piece_of_creation/tick/kill
#
# 消滅処理
#
# @within function asset:object/1164.piece_of_creation/tick/

# sound
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1.0 0.9 0.0
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.6 1.8 0.0
    particle minecraft:dust_color_transition 1 0.4 1 0.8 0.2 0.8 1 ~ ~ ~ 0.4 0.4 0.4 1 40

# 消去
    kill @s
