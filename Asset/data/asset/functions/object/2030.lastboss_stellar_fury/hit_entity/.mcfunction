#> asset:object/2030.lastboss_stellar_fury/hit_entity/
#
# ダメージ処理
#
# @within asset:object/alias/2030/hit_entity

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        execute if entity @s[tag=2030.Fire] run data modify storage lib: Argument.ElementType set value "Fire"
        execute if entity @s[tag=2030.Water] run data modify storage lib: Argument.ElementType set value "Water"
        execute if entity @s[tag=2030.Thunder] run data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# 消失
    function asset:object/call.m {method:kill}
