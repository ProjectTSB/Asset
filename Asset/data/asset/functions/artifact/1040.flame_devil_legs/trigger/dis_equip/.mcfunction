#> asset:artifact/1040.flame_devil_legs/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{legs:1040} run function asset:artifact/1040.flame_devil_legs/trigger/dis_equip/main