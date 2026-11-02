#> asset:artifact/0790.aurora_boots/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{feet:790} run function asset:artifact/0790.aurora_boots/dis_equip/main
