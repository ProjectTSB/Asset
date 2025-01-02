#> asset:artifact/0976.brave_sword/trigger/combo/damage
#
# 攻撃判定に入った敵にダメージを与える
#
# @within function asset:artifact/0976.brave_sword/trigger/combo/**

#> private
# @private
    #declare score_holder $RandomDamage

# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ。
            scoreboard players operation $RandomDamage Temporary %= $51 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 125
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function lib:damage/modifier
# ダメージ実行
    function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.7
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/

# リセット
    tag @s remove R4.Hit
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument
