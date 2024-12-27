#> asset:object/2008.disaster_divine/tick/cast/damage
#
# ダメージ処理
#
# @within function asset:object/2008.disaster_divine/tick/cast/

# ダメージ設定
    # ダメージ
        data modify storage api: Argument.Damage set value 42.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの裁きにより地獄へと落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @s remove 2008.Landing
