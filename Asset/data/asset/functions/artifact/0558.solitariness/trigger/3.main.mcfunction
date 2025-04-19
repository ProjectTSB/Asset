#> asset:artifact/0558.solitariness/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0558.solitariness/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# フルセット処理
    execute if data storage asset:context id.all{head:558,chest:559,legs:560,feet:561} run function asset:artifact/0559.solitariness/trigger/fullset/equip
