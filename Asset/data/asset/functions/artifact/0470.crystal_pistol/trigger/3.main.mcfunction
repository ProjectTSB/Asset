#> asset:artifact/0470.crystal_pistol/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0470.crystal_pistol/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.arrow.shoot player @a ~ ~ ~ 1 1


# 召喚
    data modify storage api: Argument.ID set value 1107
    data modify storage api: Argument.FieldOverride.Damage set value 23
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function api:object/summon
