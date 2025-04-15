#> asset:artifact/1287.sword_of_rebellion/attack_melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1287.sword_of_rebellion/attack_melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

#> private
# @private
    #declare score_holder $ZR.Progress
    #declare score_holder $ZR.Damage
    #declare score_holder $ZR.Calc1
    #declare score_holder $ZR.Calc2

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,limit=1] anchored eyes positioned ^ ^ ^ run function asset:artifact/1287.sword_of_rebellion/attack_melee/effect

# 進捗を取得
    function api:global_vars/game_progress
    execute store result score $ZR.Progress Temporary run data get storage api: Return.Progress 100
# 殴る $Damage(e2)
    # 基礎値: 5
        scoreboard players set $ZR.Damage Temporary 400
    # Lv1: 5-40
        scoreboard players operation $ZR.Calc1 Temporary = $ZR.Progress Temporary
        scoreboard players operation $ZR.Calc1 Temporary < $25 Const
        scoreboard players set $ZR.Calc2 Temporary 140
        scoreboard players operation $ZR.Calc2 Temporary *= $ZR.Calc1 Temporary
        scoreboard players operation $ZR.Damage Temporary += $ZR.Calc2 Temporary
        scoreboard players reset $ZR.Calc1 Temporary
        scoreboard players reset $ZR.Calc2 Temporary
    # Lv2: 40-110
        scoreboard players operation $ZR.Calc1 Temporary = $ZR.Progress Temporary
        scoreboard players remove $ZR.Calc1 Temporary 25
        scoreboard players operation $ZR.Calc1 Temporary > $0 Const
        scoreboard players operation $ZR.Calc1 Temporary < $25 Const
        scoreboard players set $ZR.Calc2 Temporary 280
        scoreboard players operation $ZR.Calc2 Temporary *= $ZR.Calc1 Temporary
        scoreboard players operation $ZR.Damage Temporary += $ZR.Calc2 Temporary
        scoreboard players reset $ZR.Calc1 Temporary
        scoreboard players reset $ZR.Calc2 Temporary
    # Lv3: 110-400
        scoreboard players operation $ZR.Calc1 Temporary = $ZR.Progress Temporary
        scoreboard players remove $ZR.Calc1 Temporary 50
        scoreboard players operation $ZR.Calc1 Temporary > $0 Const
        scoreboard players operation $ZR.Calc1 Temporary < $25 Const
        scoreboard players set $ZR.Calc2 Temporary 1160
        scoreboard players operation $ZR.Calc2 Temporary *= $ZR.Calc1 Temporary
        scoreboard players operation $ZR.Damage Temporary += $ZR.Calc2 Temporary
        scoreboard players reset $ZR.Calc1 Temporary
        scoreboard players reset $ZR.Calc2 Temporary
    # Lv4: 400-1200
        scoreboard players operation $ZR.Calc1 Temporary = $ZR.Progress Temporary
        scoreboard players remove $ZR.Calc1 Temporary 75
        scoreboard players operation $ZR.Calc1 Temporary > $0 Const
        scoreboard players operation $ZR.Calc1 Temporary < $25 Const
        scoreboard players set $ZR.Calc2 Temporary 3200
        scoreboard players operation $ZR.Calc2 Temporary *= $ZR.Calc1 Temporary
        scoreboard players operation $ZR.Damage Temporary += $ZR.Calc2 Temporary
        scoreboard players reset $ZR.Calc1 Temporary
        scoreboard players reset $ZR.Calc2 Temporary
    # ダメージ
        execute store result storage api: Argument.Damage double 0.01 run scoreboard players get $ZR.Damage Temporary
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,limit=1] run function api:damage/
        function api:damage/reset
# リセット
    scoreboard players reset $ZR.Damage Temporary
    scoreboard players reset $ZR.Progress Temporary
