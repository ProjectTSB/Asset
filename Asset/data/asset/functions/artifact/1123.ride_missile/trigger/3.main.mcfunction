#> asset:artifact/1123.ride_missile/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1123.ride_missile/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚する
    data modify storage api: Argument.ID set value 1054
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.DamageForPlayer set value 40
    data modify storage api: Argument.FieldOverride.DamageForEnemy set value 250
    execute positioned ~ ~0.75 ~ run function api:object/summon
