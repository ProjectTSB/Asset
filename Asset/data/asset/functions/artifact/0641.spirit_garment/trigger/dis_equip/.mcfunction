#> asset:artifact/0641.spirit_garment/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

execute if data storage asset:context id{feet:641} run function asset:artifact/0641.spirit_garment/trigger/dis_equip/main