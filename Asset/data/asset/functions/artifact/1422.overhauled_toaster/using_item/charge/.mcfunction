#> asset:artifact/1422.overhauled_toaster/using_item/charge/
#
# 使用継続時間からチャージ段階を更新する
#
# @within function asset:artifact/1422.overhauled_toaster/using_item/2.check_condition

# チャージ段階が変わるときだけEffectを更新する
    execute if data storage asset:context UsingItemTime{mainhand:3} run function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:2,Pitch:1.75}
    execute if data storage asset:context UsingItemTime{mainhand:5} run function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:3,Pitch:1.8}
    execute if data storage asset:context UsingItemTime{mainhand:7} run function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:4,Pitch:1.85}
    execute if data storage asset:context UsingItemTime{mainhand:9} run function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:5,Pitch:1.9}
    execute if data storage asset:context UsingItemTime{mainhand:11} run function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:6,Pitch:1.95}
    execute if data storage asset:context UsingItemTime{mainhand:13} run function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:7,Pitch:2.0}

# 長押し中の音
    playsound block.furnace.fire_crackle player @a ~ ~ ~ 1 0.8
