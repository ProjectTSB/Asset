#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/damage
#
# ダメージ処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/loop

# ダメージ設定
    # ダメージ
        data modify storage api: Argument.Damage set value 35.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの光線により身を焼かれて息絶えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
    # ダメージを与える
        function api:damage/modifier
        execute as @a[tag=AW.Temp.Target,distance=..5] run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @a[tag=AW.Temp.Target,distance=..5] remove AW.Temp.Target
