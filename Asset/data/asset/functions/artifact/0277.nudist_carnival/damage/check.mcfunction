#> asset:artifact/0277.nudist_carnival/damage/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/277/damage/check


    # このアイテム以外のアイテムを何も持っていないか確認
        execute store result score @s Temporary run clear @s #lib:all 0
        tag @s[scores={Temporary=2..}] remove CanUsed

    # リセット
        scoreboard players reset @s Temporary