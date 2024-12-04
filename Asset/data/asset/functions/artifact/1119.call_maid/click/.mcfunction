#> asset:artifact/1119.call_maid/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1119/click/


# 召喚
    data modify storage api: Argument.ID set value 1052
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
