#> asset:artifact/0187.chloranthy_wand/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/187/click/check

# プレイヤーのゲームモードがサバイバル・クリエイティブの時にのみ使用可能
    execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed