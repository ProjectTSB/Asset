#> asset:artifact/0016.golem_core/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/16/click/check

#> Private
# @private
    #declare score_holder $IronBlockCount

# 鉄ブロックを持ってるかチェック
    execute store result score $IronBlockCount Temporary run clear @s iron_block 0
    execute if score $IronBlockCount Temporary matches 0 run tag @s remove CanUsed
    execute if score $IronBlockCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
