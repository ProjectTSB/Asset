#> asset:artifact/0759.sina_tk_empty/keep_sneak/check_bamboo
#
# 竹を所持しているかチェック
#
# @within function asset:artifact/0759.sina_tk_empty/keep_sneak/check

#> Private
# @private
    #declare score_holder $Count

# 15個以下ならCanUsedを削除
    execute store result score $Count Temporary run clear @s bamboo 0
    execute if score $Count Temporary matches ..15 run tag @s remove CanUsed
    execute if score $Count Temporary matches ..15 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $Count Temporary
