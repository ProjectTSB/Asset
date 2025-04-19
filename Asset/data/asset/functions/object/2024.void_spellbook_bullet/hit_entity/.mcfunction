#> asset:object/2024.void_spellbook_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2024/hit_entity

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 32.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sの身体は%2$sの弾幕に貫かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
    # ダメージを与える
        execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
# リセット
    function api:damage/reset

# 消失
    function asset:object/call.m {method:kill}
