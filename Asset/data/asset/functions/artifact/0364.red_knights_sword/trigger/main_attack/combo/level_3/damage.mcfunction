#> asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/damage
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/**

# 調整担当へのメモ:
# HPが33%以下のときの性能です。更にリーチが伸び、ついでに発射体が遠くに飛んでいきます。
# 至近距離だと、斬撃と発射体が両方当たるので、ここの斬撃のダメージはかなり低めにしています。
# メインのダメージは発射体に偏っているイメージ。
# レベル4の敵相手にHP33%以下をキープするのは危険なので、ある程度攻撃が強いと嬉しいですが、任せます。

# 引数の設定
    # ダメージ値設定
        execute store result storage api: Argument.Damage float 1 run random value 200..235
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function api:damage/modifier
# ダメージ実行
    function api:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -2
    data modify storage lib: Argument.KnockbackResist set value true
    execute at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/

# リセット
    tag @s remove A4.Hit
    function api:damage/reset
    data remove storage api: Argument
