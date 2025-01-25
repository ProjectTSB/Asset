#> asset:artifact/0315.water_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/315/attack_melee/

    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 200
    playsound minecraft:entity.dolphin.jump player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~10の追加ダメージ
          scoreboard players operation $RandomDamage Temporary %= $7 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 6
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
