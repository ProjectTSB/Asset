#> asset:artifact/1123.ride_missile/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1123/click/


# 召喚する
    data modify storage api: Argument.ID set value 1054
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.DamageForPlayer set value 40
    data modify storage api: Argument.FieldOverride.DamageForEnemy set value 800
    execute positioned ~ ~0.75 ~ run function api:object/summon
