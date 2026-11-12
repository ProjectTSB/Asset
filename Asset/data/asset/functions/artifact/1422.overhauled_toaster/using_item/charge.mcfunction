#> asset:artifact/1422.overhauled_toaster/using_item/charge
#
# 使用継続時間からチャージ段階を更新する
#
# @within function asset:artifact/1422.overhauled_toaster/using_item/2.check_condition

# チャージ段階が変わるときだけEffectを更新する
    execute if data storage asset:context UsingItemTime{mainhand:2} run function asset:artifact/1422.overhauled_toaster/using_item/charge/2
    execute if data storage asset:context UsingItemTime{mainhand:4} run function asset:artifact/1422.overhauled_toaster/using_item/charge/3
    execute if data storage asset:context UsingItemTime{mainhand:6} run function asset:artifact/1422.overhauled_toaster/using_item/charge/4
    execute if data storage asset:context UsingItemTime{mainhand:8} run function asset:artifact/1422.overhauled_toaster/using_item/charge/5
    execute if data storage asset:context UsingItemTime{mainhand:10} run function asset:artifact/1422.overhauled_toaster/using_item/charge/6
    execute if data storage asset:context UsingItemTime{mainhand:12} run function asset:artifact/1422.overhauled_toaster/using_item/charge/7

# 長押し中の音
    playsound block.furnace.fire_crackle player @a ~ ~ ~ 1 0.8
