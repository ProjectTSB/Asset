#> asset:artifact/1619.volt_rave/dis_equip/1.trigger
#
# メインハンドから外したときの処理を呼び出す
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{mainhand:1619} run function asset:artifact/1619.volt_rave/dis_equip/2.main
