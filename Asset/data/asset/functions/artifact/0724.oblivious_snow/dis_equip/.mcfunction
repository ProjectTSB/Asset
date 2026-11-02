#> asset:artifact/0724.oblivious_snow/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{head:724} run function asset:artifact/0724.oblivious_snow/dis_equip/main
