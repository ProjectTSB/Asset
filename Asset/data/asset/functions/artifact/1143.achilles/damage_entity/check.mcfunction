#> asset:artifact/1143.achilles/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1143/damage_entity/check

# 背後に Attacker がいるか確認
    execute positioned ^ ^ ^-25 unless entity @e[type=#lib:living,tag=Attacker,distance=..25,limit=1] run tag @s remove CanUsed
