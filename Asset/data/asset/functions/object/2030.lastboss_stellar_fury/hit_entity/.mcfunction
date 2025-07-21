#> asset:object/2030.lastboss_stellar_fury/hit_entity/
#
# ダメージ処理
#
# @within asset:object/alias/2030/hit_entity

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        execute if entity @s[tag=2030.Fire] run data modify storage api: Argument.ElementType set value "Fire"
        execute if entity @s[tag=2030.Water] run data modify storage api: Argument.ElementType set value "Water"
        execute if entity @s[tag=2030.Thunder] run data modify storage api: Argument.ElementType set value "Thunder"

# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function api:damage/
# リセット
    function api:damage/reset

# 消失
    function asset:object/call.m {method:kill}
