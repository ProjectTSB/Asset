#> asset:artifact/0214.web_shooter/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/214/click/check


    execute if entity @s[gamemode=adventure] run function lib:message/artifact/can_not_use_here
    execute if entity @s[gamemode=adventure] run tag @s remove CanUsed