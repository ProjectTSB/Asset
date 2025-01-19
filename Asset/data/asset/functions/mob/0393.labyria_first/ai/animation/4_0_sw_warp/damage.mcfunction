#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage
#
# 斬撃ダメージ判定1
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/
#   asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって無惨に切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute positioned ^ ^ ^1.5 as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset
