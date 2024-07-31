#> asset:artifact/0557.catastrophe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0557.catastrophe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0557.catastrophe/trigger/vfx

# フルセット処理
    execute if data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0554.catastrophe/trigger/fullset/equip
