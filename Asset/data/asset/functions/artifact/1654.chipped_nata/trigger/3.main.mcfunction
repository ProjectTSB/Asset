#> asset:artifact/1654.chipped_nata/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1654.chipped_nata/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

    data modify storage api: Argument.ID set value 1653
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
