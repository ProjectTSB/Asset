#> asset:artifact/0468.raging_demon/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/468/tick/check


# 周囲10M以内に体力が20以下の敵がいるか確認
    execute if entity @s[tag=CanUsed] run function asset:artifact/0468.raging_demon/tick/check_target