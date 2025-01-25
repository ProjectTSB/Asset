#> asset:artifact/1043.gamma_ray/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1043/click/check

    execute if entity @s[tag=CanUsed,predicate=!lib:is_sneaking] run tellraw @s {"text":"スニーク時以外は発動できません。","color":"red"}
    execute unless entity @s[predicate=lib:is_sneaking] run tag @s remove CanUsed