#> asset:artifact/0320.divine_thunder_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/320/attack_melee/

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] rotated ~ 0 run function asset:artifact/0320.divine_thunder_sword/attack_melee/3.1.particle
    playsound item.trident.throw player @a ~ ~ ~ 1 1

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~40の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $41 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 30
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
