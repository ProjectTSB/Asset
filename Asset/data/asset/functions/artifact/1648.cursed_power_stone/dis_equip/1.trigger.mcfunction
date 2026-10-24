#> asset:artifact/1648.cursed_power_stone/dis_equip/1.trigger
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[1648]} run function asset:artifact/1648.cursed_power_stone/dis_equip/2.check_condition
