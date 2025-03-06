#> asset:artifact/1247.hardened_netherite_helmet/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{head:1247} run function asset:artifact/1247.hardened_netherite_helmet/trigger/dis_equip/main
