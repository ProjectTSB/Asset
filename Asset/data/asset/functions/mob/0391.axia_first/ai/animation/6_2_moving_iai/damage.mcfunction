#> asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/damage
#
# ダメージ処理
#
# @within function asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって無惨に切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset
