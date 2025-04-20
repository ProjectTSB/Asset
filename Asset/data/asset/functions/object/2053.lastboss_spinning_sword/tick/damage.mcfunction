#> asset:object/2053.lastboss_spinning_sword/tick/damage
#
#
#
# @within function asset:object/2053.lastboss_spinning_sword/tick/

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 63.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/

# リセット
    function api:damage/reset
