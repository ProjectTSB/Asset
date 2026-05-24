#> asset:artifact/1166.airlift/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1166.airlift/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto

# 他にアイテム等確認する場合はここに書く 今だと自然沸きmobをトリガーにされるが、今後廃止されるとのことなのでこれでいく
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,distance=..30] if entity @s[tag=CanUsed] run tellraw @s [{"text":"近くに敵がいません。","color":"red"}]
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,distance=..30] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1166.airlift/trigger/3.main
