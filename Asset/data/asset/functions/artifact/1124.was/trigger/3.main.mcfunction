#> asset:artifact/1124.was/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1124.was/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 仮として敵のやつそのまま召喚
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.ID set value 2091
    function api:object/summon





#
