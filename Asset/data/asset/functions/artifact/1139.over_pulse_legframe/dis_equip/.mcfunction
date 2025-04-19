#> asset:artifact/1139.over_pulse_legframe/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{legs:1139} run function asset:artifact/1139.over_pulse_legframe/dis_equip/main
