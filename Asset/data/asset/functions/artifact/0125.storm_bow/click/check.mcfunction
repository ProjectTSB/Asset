#> asset:artifact/0125.storm_bow/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/125/click/check

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 矢を持ってるかチェック
        execute store result score $ArrowCount Temporary run clear @s arrow 0
        execute if score $ArrowCount Temporary matches ..0 run tag @s remove CanUsed
        execute if score $ArrowCount Temporary matches ..0 run function lib:message/artifact/dont_have_require_items
        scoreboard players reset $ArrowCount Temporary