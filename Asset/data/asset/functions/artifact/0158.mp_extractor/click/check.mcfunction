#> asset:artifact/0158.mp_extractor/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/158/click/check

#> Private
# @private
    #declare score_holder $BottleCount

# ガラス瓶持ってるかチェック
    execute store result score $BottleCount Temporary run clear @s glass_bottle 0
    execute if score $BottleCount Temporary matches 0 run tag @s remove CanUsed
# ガラス瓶ないよコメント
    execute if score $BottleCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
