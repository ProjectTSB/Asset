#> asset:artifact/0001.book_of_all-seeing/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1/click/check

execute if entity @s[tag=CanUsed] anchored eyes positioned ^ ^ ^ run function asset:artifact/0001.book_of_all-seeing/click/find_target_entity
execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=01.Target,distance=..30] run tellraw @s {"text":"対象を視界に捉えていません。","color":"red"}
execute unless entity @e[type=#lib:living,type=!player,tag=01.Target,distance=..30] run tag @s remove CanUsed
