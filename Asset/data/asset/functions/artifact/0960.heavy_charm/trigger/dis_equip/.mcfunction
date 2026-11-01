#> asset:artifact/0960.heavy_charm/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{hotbar:[960]} run function asset:artifact/0960.heavy_charm/trigger/dis_equip/main