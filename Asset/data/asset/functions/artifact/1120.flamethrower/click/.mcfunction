#> asset:artifact/1120.flamethrower/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1120/click/


# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1

# 召喚
    data modify storage api: Argument.ID set value 1053
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon
