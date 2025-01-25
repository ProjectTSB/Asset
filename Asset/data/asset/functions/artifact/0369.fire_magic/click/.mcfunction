#> asset:artifact/0369.fire_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/369/click/


# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5

# 弾を召喚
    data modify storage api: Argument.ID set value 1010
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
