#> asset:mob/0365.frestchika_v2/ai/projectile/bullet/4.cast
#
# 着弾処理
#
# @within function asset:mob/0365.frestchika_v2/ai/projectile/bullet/3.tick

# 引数の設定
    # 与えるダメージ
        # ノーマルなら 24f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 24.0f
        # ハードなら 32f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 32.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのプラズマ弾幕を受け、意識を失ってしまった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[tag=this,distance=..100] run function lib:damage/modifier

# タグ付け
    tag @s add A5.Landing