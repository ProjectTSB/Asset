#> asset:artifact/1137.over_pulse_headgear/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{head:1137} run function asset:artifact/1137.over_pulse_headgear/dis_equip/main
