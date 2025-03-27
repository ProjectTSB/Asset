#> asset:artifact/0364.red_knights_sword/trigger/main_attack/
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/3.main

# コンボカウント加算
    scoreboard players add @s A4.Combo 1

# 攻撃
    execute if score @s A4.Combo matches 1 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/weak/slash1
    execute if score @s A4.Combo matches 2 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/weak/slash2
    execute if score @s A4.Combo matches 3 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/weak/slash3

# リセット
    scoreboard players reset $A4.Temp Temporary
