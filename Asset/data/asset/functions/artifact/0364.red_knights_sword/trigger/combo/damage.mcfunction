#> asset:artifact/0364.red_knights_sword/trigger/combo/damage
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/combo/**

# 引数の設定
    # ダメージ値設定
        execute store result storage api: Argument.Damage float 1 run random value 125..175
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
    tag @s remove A4.Hit
    function api:damage/reset
    data remove storage api: Argument
