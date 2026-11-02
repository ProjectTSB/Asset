#> asset:artifact/1138.over_pulse_bodyarmor/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{chest:1138} run function asset:artifact/1138.over_pulse_bodyarmor/dis_equip/main
