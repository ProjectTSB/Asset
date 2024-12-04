#> asset:artifact/0250.phoenix/shot/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/250/shot/

# 矢を召喚する
    data modify storage api: Argument.ID set value 1072
    data modify storage api: Argument.FieldOverride.DamageForNightCloudy set value 300
    data modify storage api: Argument.FieldOverride.DamageForNightSunny set value 350
    data modify storage api: Argument.FieldOverride.DamageForDayCloudy set value 350
    data modify storage api: Argument.FieldOverride.DamageForDaySunny set value 400
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
