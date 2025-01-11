#> asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/slash_damage
#
# 斬撃ダメージ判定
#
# @within function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって無惨に切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4.5] at @s run function api:damage/
# リセット
    function api:damage/reset
