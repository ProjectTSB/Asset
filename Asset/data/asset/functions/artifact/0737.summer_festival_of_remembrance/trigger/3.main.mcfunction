#> asset:artifact/0737.summer_festival_of_remembrance/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# Object召喚
    data modify storage api: Argument.ID set value 1018
    data modify storage api: Argument.FieldOverride.Tick set value 1200
    function api:object/summon
