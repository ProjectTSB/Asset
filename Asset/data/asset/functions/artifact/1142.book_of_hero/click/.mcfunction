#> asset:artifact/1142.book_of_hero/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1142/click/


# 召喚
    data modify storage api: Argument.ID set value 1059
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
