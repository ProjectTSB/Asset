#> asset:artifact/1227.aurora_scythe/dis_equip/1.trigger
#
# メインハンドから外したときの処理を呼び出す
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{mainhand:1227} run function asset:artifact/1227.aurora_scythe/dis_equip/2.main
