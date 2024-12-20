#> asset:mob/0391.axia_first/ai/animation/4_0_naginagi/damage
#
# なぎなぎ教授 ダメージ
#
# @within function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに薙ぎ払らわれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..9] at @s run function lib:damage/
# リセット
    function lib:damage/reset
