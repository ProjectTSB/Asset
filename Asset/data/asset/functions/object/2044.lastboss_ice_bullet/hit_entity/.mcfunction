#> asset:object/2044.lastboss_ice_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2044/hit_entity

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function api:damage/

# リセット
    function api:damage/reset

# 消失
    function asset:object/call.m {method:kill}
