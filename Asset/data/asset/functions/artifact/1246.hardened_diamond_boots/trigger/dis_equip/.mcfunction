#> asset:artifact/1246.hardened_diamond_boots/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{feet:1246} run function asset:artifact/1246.hardened_diamond_boots/trigger/dis_equip/main
