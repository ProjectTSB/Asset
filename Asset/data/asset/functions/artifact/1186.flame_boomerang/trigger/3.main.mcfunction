#> asset:artifact/1186.flame_boomerang/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1186.flame_boomerang/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ブーメラン召喚
    data modify storage api: Argument.ID set value 1091
    data modify storage api: Argument.FieldOverride.Damage set value 145f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.35 ^-0.35 ^0.2 run function api:object/summon
