#> asset:artifact/1030.beauty_of_margins/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[1030]} run function asset:artifact/1030.beauty_of_margins/trigger/dis_equip/main