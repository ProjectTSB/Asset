#> asset:artifact/1059.great_demon_leg/equip/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{legs:1059} run function asset:artifact/1059.great_demon_leg/equip/dis_equip/main
