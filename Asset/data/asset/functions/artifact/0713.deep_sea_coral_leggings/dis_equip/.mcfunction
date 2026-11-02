#> asset:artifact/0713.deep_sea_coral_leggings/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{legs:713} run function asset:artifact/0713.deep_sea_coral_leggings/dis_equip/main
