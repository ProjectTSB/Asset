#> asset:artifact/0991.soul_mate/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[991]} run function asset:artifact/0991.soul_mate/dis_equip/main
