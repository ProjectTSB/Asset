#> asset:artifact/1430.shield_of_fate/trigger/equip/main
#
# 装備を付けた時のメイン処理
#
# @within function asset:artifact/1430.shield_of_fate/trigger/equip/

    execute unless entity @s[tag=13Q.Equipped] run function asset:artifact/1430.shield_of_fate/trigger/equip/trigger
