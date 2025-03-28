#> asset:artifact/0877.hungry_uni/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0877.hungry_uni/trigger/1.trigger
#> Private
# @private
    #declare score_holder $Count

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    # コンブを持ってるかチェック
        execute store result score $Count Temporary run clear @s kelp 0
        execute unless score $Count Temporary matches 8.. run tag @s remove CanUsed
        execute unless score $Count Temporary matches 8.. run function lib:message/artifact/dont_have_require_items
        scoreboard players reset $Count Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0877.hungry_uni/trigger/3.main
