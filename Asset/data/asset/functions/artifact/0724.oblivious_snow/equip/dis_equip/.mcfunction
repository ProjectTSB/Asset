#> asset:artifact/0724.oblivious_snow/equip/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{head:724} run function asset:artifact/0724.oblivious_snow/equip/dis_equip/main