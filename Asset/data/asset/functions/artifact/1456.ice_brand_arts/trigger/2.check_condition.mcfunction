#> asset:artifact/1456.ice_brand_arts/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1456.ice_brand_arts/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
# 戦闘外に使うべからず
    execute unless predicate lib:in_battle run tellraw @s[tag=CanUsed] {"text":"戦闘中のみ使用可能です。","color":"red"}
    execute unless predicate lib:in_battle run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1456.ice_brand_arts/trigger/3.main
