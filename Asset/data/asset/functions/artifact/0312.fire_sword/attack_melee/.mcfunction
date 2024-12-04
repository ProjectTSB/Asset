#> asset:artifact/0312.fire_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/312/attack_melee/

#> private
# @private
    #declare score_holder $RandomDamage

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10

    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.5

# ダメージ
    # ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~10の追加ダメージ
          scoreboard players operation $RandomDamage Temporary %= $11 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 40
    # ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
