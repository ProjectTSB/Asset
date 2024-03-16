#> asset:artifact/1039.flame_devil_chest/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{chest:1039} run function asset:artifact/1039.flame_devil_chest/trigger/dis_equip/main