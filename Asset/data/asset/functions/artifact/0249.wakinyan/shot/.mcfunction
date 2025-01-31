#> asset:artifact/0249.wakinyan/shot/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/249/shot/

# 矢を召喚する
    data modify storage api: Argument.ID set value 1071
    data modify storage api: Argument.FieldOverride.DamageForSunny set value 250
    data modify storage api: Argument.FieldOverride.DamageForRaining set value 290
    data modify storage api: Argument.FieldOverride.DamageForThundering set value 330
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
