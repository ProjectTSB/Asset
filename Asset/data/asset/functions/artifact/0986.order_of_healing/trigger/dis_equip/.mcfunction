#> asset:artifact/0986.order_of_healing/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{hotbar:[986]} run function asset:artifact/0986.order_of_healing/trigger/dis_equip/main