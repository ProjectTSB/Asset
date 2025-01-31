#> asset:artifact/0877.hungry_uni/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/877/click/check

#> Private
# @private
    #declare score_holder $Count

# コンブを持ってるかチェック
    execute store result score $Count Temporary run clear @s kelp 0
    execute unless score $Count Temporary matches 8.. run tag @s remove CanUsed
    execute unless score $Count Temporary matches 8.. run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $Count Temporary
