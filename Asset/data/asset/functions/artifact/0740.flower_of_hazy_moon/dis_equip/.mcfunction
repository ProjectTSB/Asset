#> asset:artifact/0740.flower_of_hazy_moon/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[740]} run function asset:artifact/0740.flower_of_hazy_moon/dis_equip/main
