#> asset:artifact/1066.weight_stone/equip/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[1066]} run function asset:artifact/1066.weight_stone/equip/dis_equip/main