#> asset:object/1075.inferno_rush_arm/tick/hit
#
#
#
# @within function asset:object/1075.inferno_rush_arm/tick/

#> tag
# @private
    #declare score_holder $RandomDamage
    #declare tag HitTarget

# 演出
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run particle flame ~ ~1.4 ~ 0 0 0 0.3 3
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run particle lava ~ ~1.4 ~ 0 0 0 0 0
    playsound entity.player.attack.knockback neutral @a ~ ~ ~ 1 1


# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ。
            scoreboard players operation $RandomDamage Temporary %= $11 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 25
    #ダメージセット
        execute store result storage api: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    execute as @p[tag=1075.Owner] run function api:damage/modifier
# ダメージ実行
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function api:damage/
    function api:damage/reset

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.1
    data modify storage lib: Argument.KnockbackResist set value true
    execute facing entity @p[tag=1075.Owner] eyes as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function lib:motion/


# リセット
    scoreboard players reset $RandomDamage Temporary
