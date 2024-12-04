#> asset:artifact/0796.log4shell/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/796/click/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 原木を持っているかチェック
    execute store result score $M4.LogCount Temporary run clear @s #minecraft:logs 0
    execute if score $M4.LogCount Temporary matches 0 run tag @s remove CanUsed
    execute if score $M4.LogCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $M4.LogCount Temporary
