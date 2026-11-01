#> asset:artifact/1430.shield_of_fate/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{hotbar:[1430]} run function asset:artifact/1430.shield_of_fate/trigger/dis_equip/main
