#> asset:object/2131.blood_knife/tick/hit
#
#
#
# @within function asset:object/2131.blood_knife/tick/


# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 35.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @p[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset

# キル
    kill @s
