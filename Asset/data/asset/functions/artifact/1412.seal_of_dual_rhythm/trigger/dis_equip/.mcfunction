#> asset:artifact/1412.seal_of_dual_rhythm/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{offhand:1412} run function asset:artifact/1412.seal_of_dual_rhythm/trigger/dis_equip/main
