#> asset:artifact/0985.ark_of_the_sanctuary/trigger/shot_spin_blade
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main

# オブジェクト召喚
    data modify storage api: Argument.ID set value 1145
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 130..170
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ^ ^ ^ positioned ~ ~-0.5 ~ run function api:object/summon
