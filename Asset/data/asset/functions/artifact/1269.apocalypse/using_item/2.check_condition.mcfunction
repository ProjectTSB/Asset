#> asset:artifact/1269.apocalypse/using_item/2.check_condition
#
#
#
# @within function asset:artifact/1269.apocalypse/using_item/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1269.apocalypse/using_item/3.main
