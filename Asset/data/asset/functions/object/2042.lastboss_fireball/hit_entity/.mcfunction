#> asset:object/2042.lastboss_fireball/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2042/hit_entity

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# 消失
    function asset:object/call.m {method:kill}
