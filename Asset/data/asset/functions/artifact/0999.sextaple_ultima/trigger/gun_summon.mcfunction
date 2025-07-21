#> asset:artifact/0999.sextaple_ultima/trigger/gun_summon
#
#
#
# @within function asset:artifact/0999.sextaple_ultima/trigger/3.main

# 召喚
    data modify storage api: Argument.ID set value 1078
    data modify storage api: Argument.FieldOverride.Damage set value 85
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

# 演出
    particle wax_on ~ ~ ~ 1 1 1 50 80
    particle dust 0.933 1 0 4 ~ ~ ~ 0 2 0 0 30
    playsound entity.generic.explode neutral @a
