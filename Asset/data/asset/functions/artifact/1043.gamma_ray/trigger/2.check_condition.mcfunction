#> asset:artifact/1043.gamma_ray/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1043.gamma_ray/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=CanUsed,predicate=!lib:is_sneaking] run tellraw @s {"text":"スニーク時以外は発動できません。","color":"red"}
    execute unless entity @s[predicate=lib:is_sneaking] run tag @s remove CanUsed
    execute if entity @s[tag=SZ.Cast] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1043.gamma_ray/trigger/3.main