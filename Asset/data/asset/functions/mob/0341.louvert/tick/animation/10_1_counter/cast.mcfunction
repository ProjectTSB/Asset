#> asset:mob/0341.louvert/tick/animation/10_1_counter/cast
#
# カウンター処理
#
# @within function asset:mob/0341.louvert/tick/animation/10_1_counter/

# 演出
    function asset:mob/0341.louvert/tick/animation/10_1_counter/vfx

# ダメージ
    # 引数の設定
    # 与えるダメージ 40f
        data modify storage api: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのカウンターによって斬り裂かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] at @s run function api:damage/
# リセット
    function api:damage/reset
