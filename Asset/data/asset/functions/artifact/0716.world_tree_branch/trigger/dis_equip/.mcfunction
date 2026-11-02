#> asset:artifact/0716.world_tree_branch/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{chest:716} run function asset:artifact/0716.world_tree_branch/trigger/dis_equip/main