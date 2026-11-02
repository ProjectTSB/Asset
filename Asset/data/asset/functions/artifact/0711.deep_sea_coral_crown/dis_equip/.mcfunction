#> asset:artifact/0711.deep_sea_coral_crown/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{head:711} run function asset:artifact/0711.deep_sea_coral_crown/dis_equip/main
