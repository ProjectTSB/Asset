#> asset:artifact/0372.water_magic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0372.water_magic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# Objectを召喚
    data modify storage api: Argument.ID set value 1092
    data modify storage api: Argument.FieldOverride.Damage set value 5.0f
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~ 0 positioned ~ ~0.3 ~ positioned ^ ^ ^5 run function api:object/summon
