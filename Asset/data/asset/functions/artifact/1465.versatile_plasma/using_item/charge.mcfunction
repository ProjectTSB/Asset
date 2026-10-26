#> asset:artifact/1465.versatile_plasma/using_item/charge
#
#
#
# @within function asset:artifact/1465.versatile_plasma/using_item/2.check_condition

# 長押しした時間からEffect374のスタックを更新
    execute if data storage asset:context UsingItemTime{mainhand:25} run function asset:artifact/1465.versatile_plasma/using_item/charge/check/2
    execute if data storage asset:context UsingItemTime{mainhand:50} run function asset:artifact/1465.versatile_plasma/using_item/charge/check/3
