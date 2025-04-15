#> asset:artifact/0976.brave_sword/trigger/combo/damage
#
# 攻撃判定に入った敵にダメージを与える
#
# @within function asset:artifact/0976.brave_sword/trigger/combo/**

# 引数の設定
    # ダメージ値設定
        execute store result storage api: Argument.Damage float 1 run random value 180..215
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function api:damage/modifier
# ダメージ実行
    function api:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.7
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/

# リセット
    tag @s remove R4.Hit
    function api:damage/reset
    data remove storage lib: Argument
