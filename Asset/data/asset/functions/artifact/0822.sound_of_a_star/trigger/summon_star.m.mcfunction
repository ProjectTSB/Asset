#> asset:artifact/0822.sound_of_a_star/trigger/summon_star.m
#
# 神器のメイン処理部
#
# @input args
#   Damage: int
#   StartDelay: int
# @within function asset:artifact/0822.sound_of_a_star/trigger/3.main

# 星を召喚
    data modify storage api: Argument.ID set value 1023
    $data modify storage api: Argument.FieldOverride.Damage set value $(Damage)
    $data modify storage api: Argument.FieldOverride.StartDelay set value $(StartDelay)
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon




#
