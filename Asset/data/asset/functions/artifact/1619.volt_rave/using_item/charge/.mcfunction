#> asset:artifact/1619.volt_rave/using_item/charge/
#
#
#
# @within function asset:artifact/1619.volt_rave/using_item/2.check_condition

# 一定tick目に演出とobject召喚
    execute if data storage asset:context UsingItemTime{mainhand:17} run function asset:artifact/1619.volt_rave/using_item/charge/before

# チャージ完了時
    execute if data storage asset:context UsingItemTime{mainhand:20} run function asset:artifact/1619.volt_rave/using_item/charge/full_charge
