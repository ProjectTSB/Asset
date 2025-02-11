#> asset:artifact/0087.sheep_blessing/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/87/click/check

# 破壊可能エリアでのみ使用可能
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here

# 16個以上羊毛を持ってるかチェック
    execute store result score @s Temporary run clear @s #wool 0
    execute if score @s Temporary matches ..15 run tag @s remove CanUsed
    execute if score @s Temporary matches ..15 run function lib:message/artifact/dont_have_require_items

# 羊毛が48個を切っていた場合警告
    execute if score @s Temporary matches 16..48 run tellraw @s[tag=CanUsed] {"text":"注意：羊毛が残り少ないです！","color":"red","bold":true}

# リセット
    scoreboard players reset @s Temporary
