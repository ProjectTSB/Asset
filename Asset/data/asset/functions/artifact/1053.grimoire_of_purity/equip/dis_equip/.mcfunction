#> asset:artifact/1053.grimoire_of_purity/equip/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{offhand:1053} run function asset:artifact/1053.grimoire_of_purity/equip/dis_equip/main
