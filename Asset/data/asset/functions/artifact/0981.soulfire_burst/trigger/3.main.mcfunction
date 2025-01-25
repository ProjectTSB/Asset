#> asset:artifact/0981.soulfire_burst/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0981.soulfire_burst/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 1.2

# 火の玉オブジェクト召喚
    data modify storage api: Argument.ID set value 1082
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon
