#> asset:artifact/1430.shield_of_fate/trigger/1.trigger
#
# 装備を装備時に装備した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{hotbar:[1430]} run function asset:artifact/1430.shield_of_fate/trigger/2.check_condition
