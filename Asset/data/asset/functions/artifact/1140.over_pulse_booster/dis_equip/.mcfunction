#> asset:artifact/1140.over_pulse_booster/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{feet:1140} run function asset:artifact/1140.over_pulse_booster/dis_equip/main
