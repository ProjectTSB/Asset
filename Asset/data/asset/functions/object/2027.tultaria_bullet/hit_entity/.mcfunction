#> asset:object/2027.tultaria_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2027/hit_entity

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# 消失
    function asset:object/call.m {method:kill}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
