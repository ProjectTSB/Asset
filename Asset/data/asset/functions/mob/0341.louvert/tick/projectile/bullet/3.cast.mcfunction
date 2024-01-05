#> asset:mob/0341.louvert/tick/projectile/bullet/3.cast
#
# 発火時処理
#
# @within function asset:mob/0341.louvert/tick/projectile/bullet/1.tick

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
    execute as @e[tag=9H.Temp.This,distance=..100] run function lib:damage/modifier

# タグ付け
    tag @s add 9H.Landing