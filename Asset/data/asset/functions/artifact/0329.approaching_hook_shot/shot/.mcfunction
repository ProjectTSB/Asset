#> asset:artifact/0329.approaching_hook_shot/shot/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/329/shot/

# 召喚する
    data modify storage api: Argument.ID set value 1074
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
