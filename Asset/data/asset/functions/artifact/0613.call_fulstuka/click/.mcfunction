#> asset:artifact/0613.call_fulstuka/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/613/click/

# 召喚
    data modify storage api: Argument.ID set value 1050
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
