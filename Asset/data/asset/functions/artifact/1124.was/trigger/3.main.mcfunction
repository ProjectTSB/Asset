#> asset:artifact/1124.was/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1124.was/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# Object召喚
    data modify storage api: Argument.ID set value 1096
    data modify storage api: Argument.FieldOverride.Damage set value 1000
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^1.5 run function api:object/summon
