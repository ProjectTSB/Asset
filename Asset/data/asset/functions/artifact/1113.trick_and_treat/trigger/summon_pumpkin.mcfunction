#> asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin
#
# 巨大カボチャを召喚
#
# @within function asset:artifact/1113.trick_and_treat/trigger/3.main

# 低確率で他の顔を混ぜる
    execute if predicate lib:random_pass_per/10 store result storage api: Argument.FieldOverride.FaceID int 1 run function asset:artifact/1113.trick_and_treat/trigger/random_face
    scoreboard players reset $Random Temporary

# 召喚
    data modify storage api: Argument.ID set value 1057
    data modify storage api: Argument.FieldOverride.Damage set value {Beginning:15f,Clash:280f}
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
