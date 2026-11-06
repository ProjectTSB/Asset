#> asset:artifact/1256.deep_azure/using_item/charge
#
# 使用継続時間からチャージ段階を更新する
#
# @within function asset:artifact/1256.deep_azure/using_item/2.check_condition

# チャージ段階が変わるときだけEffectを更新する
    execute if data storage asset:context UsingItemTime{mainhand:16} run function asset:artifact/1256.deep_azure/using_item/charge/2
    execute if data storage asset:context UsingItemTime{mainhand:32} run function asset:artifact/1256.deep_azure/using_item/charge/3
