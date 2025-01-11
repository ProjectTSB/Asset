#> asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/damage
#
# ダメージ処理
#
# @within function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/

# サウンド
    function asset:mob/0391.axia_first/ai/general/5.slash_sound

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 25.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってみじん切りにされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset
