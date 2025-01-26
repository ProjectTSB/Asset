#> asset:artifact/0319.thunderbolt_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/319/attack_melee/

#> Private
# @private
    #declare score_holder $RandomDamage

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 100
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:poof ~ ~ ~ 0.7 0.1 0.7 0.1 10
    playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 1 1.5

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~30の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $16 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 12
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
