#> asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/damage
#
# ダメージ判定
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 18.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって両断されてしまった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ
        function lib:damage/modifier
        execute positioned ^ ^ ^1.5 as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] at @s run function lib:damage/
# リセット
    function lib:damage/reset

    execute positioned ^ ^ ^1.5 as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] at @s run particle dust 0 0.8 100000000 0.7 ~ ~1 ~ 0.6 0.6 0.6 0 25 normal @a[distance=..32]