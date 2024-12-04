#> asset:artifact/0010.attack_order/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/10/click/check


# プレイヤーのゲームモードがサバイバル・クリエイティブの時にのみ使用可能
    execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
    execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/artifact/can_not_use_here