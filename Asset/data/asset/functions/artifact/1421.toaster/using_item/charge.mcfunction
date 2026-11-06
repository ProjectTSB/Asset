#> asset:artifact/1421.toaster/using_item/charge
#
# 使用継続時間からチャージ段階を更新する
#
# @within function asset:artifact/1421.toaster/using_item/2.check_condition

# チャージ段階が変わるときだけEffectを更新する
    execute if data storage asset:context UsingItemTime{mainhand:12} run function asset:artifact/1421.toaster/using_item/charge/2
    execute if data storage asset:context UsingItemTime{mainhand:24} run function asset:artifact/1421.toaster/using_item/charge/3

# 長押し中の音
    playsound block.furnace.fire_crackle player @a ~ ~ ~ 1 0.8
