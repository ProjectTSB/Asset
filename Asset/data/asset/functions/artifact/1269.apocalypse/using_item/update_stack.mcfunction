#> asset:artifact/1269.apocalypse/using_item/update_stack
#
#
#
# @within function asset:artifact/1269.apocalypse/using_item/3.main

# スタック更新とそれの演出
    execute if data storage asset:context UsingItemTime{mainhand:1} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:1}
    execute if data storage asset:context UsingItemTime{mainhand:1} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.2

    execute if data storage asset:context UsingItemTime{mainhand:21} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:2}
    execute if data storage asset:context UsingItemTime{mainhand:21} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.3

    execute if data storage asset:context UsingItemTime{mainhand:41} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:3}
    execute if data storage asset:context UsingItemTime{mainhand:41} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.4

    execute if data storage asset:context UsingItemTime{mainhand:61} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:4}
    execute if data storage asset:context UsingItemTime{mainhand:61} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.5

    execute if data storage asset:context UsingItemTime{mainhand:81} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:5}
    execute if data storage asset:context UsingItemTime{mainhand:81} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.6

    execute if data storage asset:context UsingItemTime{mainhand:101} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:6}
    execute if data storage asset:context UsingItemTime{mainhand:101} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.8

    execute if data storage asset:context UsingItemTime{mainhand:121} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:7}
    execute if data storage asset:context UsingItemTime{mainhand:121} run playsound block.beacon.activate player @a ~ ~ ~ 1 1.9

    execute if data storage asset:context UsingItemTime{mainhand:141} run function asset:artifact/1269.apocalypse/using_item/give_charge.m {Stack:8}
    execute if data storage asset:context UsingItemTime{mainhand:141} run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0
