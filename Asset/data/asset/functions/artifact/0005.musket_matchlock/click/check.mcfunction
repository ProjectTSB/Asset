#> asset:artifact/0005.musket_matchlock/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/5/click/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 火薬を持ってるかチェック
        execute store result score $5.GunpowderCount Temporary run clear @s gunpowder 0
        execute if score $5.GunpowderCount Temporary matches 0 run tag @s remove CanUsed
        execute if score $5.GunpowderCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
        scoreboard players reset $5.GunpowderCount Temporary