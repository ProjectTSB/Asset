#> asset:artifact/1172.cyfosio_v2/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1172.cyfosio_v2/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    data modify storage api: Argument.ID set value 1084
    data modify storage api: Argument.FieldOverride.Heal set value 16
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
