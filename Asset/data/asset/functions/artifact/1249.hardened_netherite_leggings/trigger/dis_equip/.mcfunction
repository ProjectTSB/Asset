#> asset:artifact/1249.hardened_netherite_leggings/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{legs:1249} run function asset:artifact/1249.hardened_netherite_leggings/trigger/dis_equip/main
