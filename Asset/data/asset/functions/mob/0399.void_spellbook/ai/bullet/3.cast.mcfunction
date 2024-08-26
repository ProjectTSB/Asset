#> asset:mob/0399.void_spellbook/ai/bullet/3.cast
#
# 着弾処理
#
# @within function asset:mob/0399.void_spellbook/ai/bullet/2.tick

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 28.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sの身体は%2$sの弾幕に貫かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[tag=this,distance=..100] run function lib:damage/modifier

# タグ付け
    tag @s add B3.Landing
