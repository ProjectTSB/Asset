#> asset:object/2064.black_penalty_bullet/tick/cast/damage
#
# ダメージ処理
#
# @within function asset:object/2064.black_penalty_bullet/tick/cast/

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 9999f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 悪いがこれにあたったら死んでね☆
        data modify storage api: Argument.FixedDamage set value true
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sはズルしようとしたが、ウサギたちに咎められてしまった","with":[{"selector":"@s"}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @s remove 2064.Landing
