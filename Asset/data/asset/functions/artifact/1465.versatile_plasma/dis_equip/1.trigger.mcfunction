#> asset:artifact/1465.versatile_plasma/dis_equip/1.trigger
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{mainhand:1465} run function asset:artifact/1465.versatile_plasma/dis_equip/2.main
