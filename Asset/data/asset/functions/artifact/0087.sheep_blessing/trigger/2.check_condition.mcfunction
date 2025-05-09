#> asset:artifact/0087.sheep_blessing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0087.sheep_blessing/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

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

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0087.sheep_blessing/trigger/3.main
