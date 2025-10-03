#> asset:object/1061.azure_jelly/tick/turn/near_player_no_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# Rotation:[*,0f]にする
    data modify storage asset:temp 1061.Rotation set value [0f,0f]
    execute store result storage asset:temp 1061.Rotation[0] float 0.01 run random value 0..35999
    data modify entity @s Rotation set from storage asset:temp 1061.Rotation

# リセット
    data remove storage asset:temp 1061
