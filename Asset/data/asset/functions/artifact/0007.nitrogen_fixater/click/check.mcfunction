#> asset:artifact/0007.nitrogen_fixater/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/7/click/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto

# 他にアイテム等確認する場合はここに書く
    # 水入り瓶を盛っているかチェック
    execute store result score $7.Potioncount Temporary run clear @s minecraft:potion{Potion:"minecraft:water"} 0
    execute if score $7.Potioncount Temporary matches 0 run tag @s remove CanUsed
    execute if score $7.Potioncount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $7.Potioncount Temporary
