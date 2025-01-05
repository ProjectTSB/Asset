#> asset:object/2101.lexiel_fireball/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2101/kill

# 演出
    function asset:object/2101.lexiel_fireball/kill/vfx

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 22.8f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset

# キル
    kill @s
