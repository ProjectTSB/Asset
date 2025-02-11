#> asset:artifact/1145.nurse_call/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1145/click/

# 召喚
    data modify storage api: Argument.ID set value 1060
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
