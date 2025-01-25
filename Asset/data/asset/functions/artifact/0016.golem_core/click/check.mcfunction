#> asset:artifact/0016.golem_core/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/16/click/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 鉄ブロックを持ってるかチェック
        execute store result score $IronBlockCount Temporary run clear @s iron_block 0
        execute if score $IronBlockCount Temporary matches 0 run tag @s remove CanUsed
        execute if score $IronBlockCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items