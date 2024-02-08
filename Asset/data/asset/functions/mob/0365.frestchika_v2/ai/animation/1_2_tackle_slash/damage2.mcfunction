#> asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/damage2
#
# ダメージ判定（回転斬り）
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 24.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって両断されてしまった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset

    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run particle dust 0 0.8 100000000 0.7 ~ ~1 ~ 0.6 0.6 0.6 0 25 normal @a[distance=..32]