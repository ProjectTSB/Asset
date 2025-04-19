#> asset:artifact/1272.big_water_launcher/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1272.big_water_launcher/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    playsound tsb_sounds:launcher_shot player @a ~ ~ ~ 1.5 1.0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.5
    playsound ogg:block.bubble_column.upwards_ambient1 player @a ~ ~ ~ 2 0.5
    playsound ogg:block.bubble_column.upwards_ambient1 player @a ~ ~ ~ 2 1

# オブジェクト召喚
    data modify storage api: Argument.ID set value 1141
# ダメージ設定
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 1150..1650
# 飛距離設定
    data modify storage api: Argument.FieldOverride.Speed set value 1
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon
