#> asset:mob/0400.explosion_spellbook/ai/explode/
#
# 爆発する
#
# @within function asset:mob/0400.explosion_spellbook/tick/

# 演出
    particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..32]
    particle dust 0 0.75 100000000 2 ~ ~1 ~ 2 2 2 0 100 force @a[distance=..32]
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2 1 0
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2 1.01 0

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sの爆発によって%2$sは消し飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        function api:damage/modifier
    # ダメージを与える
        execute as @a[gamemode=!creative,distance=..4] at @s run function api:damage/
    # リセット
        function api:damage/reset

# キル
    function api:mob/remove
