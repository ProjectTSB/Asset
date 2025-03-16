#> asset:artifact/1150.poison_flowgun/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1150.poison_flowgun/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $Count

# 矢の数をチェック
    execute if entity @s[tag=CanUsed] store result score $Count Temporary run clear @s #arrows 0
    execute if entity @s[tag=CanUsed] unless score $Count Temporary matches 1.. run function lib:message/artifact/dont_have_require_items
    execute if entity @s[tag=CanUsed] unless score $Count Temporary matches 1.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1150.poison_flowgun/trigger/3.main

# リセット
    scoreboard players reset $Count Temporary
