#> asset:artifact/1200.alchemy_hammer/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1200.alchemy_hammer/trigger/2.check_condition

#> damage
# @within function asset:artifact/1200.alchemy_hammer/trigger/**
    #declare score_holder $Damage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound minecraft:block.anvil.place player @a[distance=..6] ~ ~ ~ 1 1.25 0
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound minecraft:block.anvil.place player @a[distance=..6] ~ ~ ~ 1 1.5 0
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run particle flash ~ ~ ~ 0 0 0 0 1

# ダメージ
    # ダメージの数値設定（ブレあり）
        execute store result score $Damage Temporary run random value 870..1180

# 乱数調整
        execute store result score $Random Temporary run random value 1..6
    # 条件を満たしたなら光の柱を召喚
    # 現状２本召喚しているがここの調整はバランス班に任せます ということで3本
        execute if score $Random Temporary matches 6 at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:artifact/1200.alchemy_hammer/trigger/summon_laser
        execute if score $Random Temporary matches 6 at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:artifact/1200.alchemy_hammer/trigger/summon_laser
        execute if score $Random Temporary matches 6 at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:artifact/1200.alchemy_hammer/trigger/summon_laser

    # ダメージ代入
        execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "None"
    # 補正
        function api:damage/modifier
    # ダメージを与える
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Random Temporary
    function api:damage/reset
