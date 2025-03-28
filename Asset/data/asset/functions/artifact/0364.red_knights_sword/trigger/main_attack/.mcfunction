#> asset:artifact/0364.red_knights_sword/trigger/main_attack/
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/3.main

# 自身にヘルス割合をチェックし、それで攻撃を分岐させる
    function api:entity/player/get_health_per
    execute store result score @s Temporary run data get storage api: Return.HealthPer 100

# コンボカウント加算
    scoreboard players add @s A4.Combo 1

# 攻撃
    # レベル1
        execute if score @s[scores={Temporary=75..}] A4.Combo matches 1 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_1/slash1
        execute if score @s[scores={Temporary=75..}] A4.Combo matches 2 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_1/slash2
        execute if score @s[scores={Temporary=75..}] A4.Combo matches 3 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_1/slash3
    # レベル2
        execute if score @s[scores={Temporary=50..74}] A4.Combo matches 1 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_2/slash1
        execute if score @s[scores={Temporary=50..74}] A4.Combo matches 2 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_2/slash2
        execute if score @s[scores={Temporary=50..74}] A4.Combo matches 3 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_2/slash3

# リセット
    scoreboard players reset $A4.Temp Temporary
    scoreboard players reset @s Temporary
