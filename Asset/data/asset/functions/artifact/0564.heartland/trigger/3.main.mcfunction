#> asset:artifact/0564.heartland/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0564.heartland/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,564,4]
    data modify storage api: Argument.Amount set value 4
    data modify storage api: Argument.Operation set value "add"
    function api:modifier/max_health/add

# フルセット処理
    execute if data storage asset:context id.all{head:562,chest:563,legs:564,feet:565} run function asset:artifact/0563.heartland/trigger/fullset/equip/
