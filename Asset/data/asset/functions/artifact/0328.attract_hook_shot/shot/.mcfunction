#> asset:artifact/0328.attract_hook_shot/shot/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/328/shot/

# 矢を召喚する
    data modify storage api: Argument.ID set value 1073
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
