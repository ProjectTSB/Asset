#> asset:artifact/0837.the_world_knife/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/837/click/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# ナイフが 30 本以上ある場合は使えない
    execute as @e[type=item_display,scores={ObjectID=1066},distance=..100] if score @s 1066.API.UserID = @p[tag=this] UserID run scoreboard players add $Count Temporary 1
    execute if score $Count Temporary matches 30.. run tag @s remove CanUsed
    scoreboard players reset $Count Temporary
