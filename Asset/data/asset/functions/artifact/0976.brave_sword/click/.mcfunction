#> asset:artifact/0976.brave_sword/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/976/click/

# コンボカウント加算
    scoreboard players add @s R4.Combo 1

# 攻撃
    execute if score @s R4.Combo matches 1 anchored eyes run function asset:artifact/0976.brave_sword/click/combo/slash1
    execute if score @s R4.Combo matches 2 anchored eyes run function asset:artifact/0976.brave_sword/click/combo/slash2
    execute if score @s R4.Combo matches 3 anchored eyes run function asset:artifact/0976.brave_sword/click/combo/slash3
