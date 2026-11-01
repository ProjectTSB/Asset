#> asset:artifact/1360.vintage_wine/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{offhand:1360} run function asset:artifact/1360.vintage_wine/dis_equip/main
