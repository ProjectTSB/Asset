#> asset:artifact/0817.dragons_neck_ball/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0817.dragons_neck_ball/trigger/dis_equip/

# フルセット解除
    execute if data storage asset:context id.all{head:817,chest:816,legs:818,feet:819} run function asset:artifact/0816.fur_coat_of_firerat/trigger/fullset/dis_equip/
