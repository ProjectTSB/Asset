#> asset:mob/0351.louvert_bullet/tick/3.cast
#
# ダメージ設定
#
# @within function asset:mob/0351.louvert_bullet/tick/2.tick

# 引数の設定
    # 与えるダメージ
        # ノーマルなら 24f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 24.0f
        # ハードなら 32f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 32.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの弾幕をその身に受けて意識を失ってしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier

# タグ付け
    tag @s add 9R.Landing