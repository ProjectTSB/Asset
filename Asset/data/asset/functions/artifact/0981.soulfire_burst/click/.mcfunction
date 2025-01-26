#> asset:artifact/0981.soulfire_burst/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/981/click/

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 1.2

# 火の玉オブジェクト召喚
    data modify storage api: Argument.ID set value 1082
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon
