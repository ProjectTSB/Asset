#> asset:artifact/0073.suzuran_charm/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/73/attack_melee/check

#> Private
# @private
    #declare score_holder $SuzuranCount

# 他にアイテム等確認する場合はここに書く
    # スズランを持ってるかチェック
        execute store result score $SuzuranCount Temporary run clear @s lily_of_the_valley 0
        execute if score $SuzuranCount Temporary matches 0 run tag @s remove CanUsed
        execute if score $SuzuranCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
