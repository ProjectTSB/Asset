#> asset:artifact/0817.dragons_neck_ball/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0817.dragons_neck_ball/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# フルセット
    execute if data storage asset:context id.all{head:817,chest:816,legs:818,feet:819} run function asset:artifact/0816.fur_coat_of_firerat/trigger/fullset/equip/
