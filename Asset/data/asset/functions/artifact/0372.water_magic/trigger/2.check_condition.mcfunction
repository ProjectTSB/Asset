#> asset:artifact/0372.water_magic/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0372.water_magic/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0372.water_magic/trigger/3.main
