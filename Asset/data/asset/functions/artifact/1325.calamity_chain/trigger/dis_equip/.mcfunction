#> asset:artifact/1325.calamity_chain/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{hotbar:[1325]} run function asset:artifact/1325.calamity_chain/trigger/dis_equip/main
