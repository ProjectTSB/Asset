#> asset:artifact/1316.blight_flowgun/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1316.blight_flowgun/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $Count

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# 矢の数をチェック
    execute store result score $Count Temporary run clear @s #arrows 0
    execute unless score $Count Temporary matches 1.. run function lib:message/artifact/dont_have_require_items
    execute unless score $Count Temporary matches 1.. run tag @s remove CanUsed
    scoreboard players reset $Count Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1316.blight_flowgun/trigger/3.main
