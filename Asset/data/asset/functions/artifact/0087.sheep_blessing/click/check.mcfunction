#> asset:artifact/0087.sheep_blessing/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/87/click/check

# プレイヤーのゲームモードがサバイバル・クリエイティブの時にのみ使用可能
    execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
    execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/artifact/can_not_use_here

# 16個以上羊毛を持ってるかチェック
    execute store result score @s Temporary run clear @s #wool 0
    execute if score @s Temporary matches ..15 run tag @s remove CanUsed
    execute if score @s Temporary matches ..15 run function lib:message/artifact/dont_have_require_items

# リセット
    scoreboard players reset @s Temporary