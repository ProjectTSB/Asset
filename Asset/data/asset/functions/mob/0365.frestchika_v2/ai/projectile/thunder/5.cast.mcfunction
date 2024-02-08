#> asset:mob/0365.frestchika_v2/ai/projectile/thunder/5.cast
#
# 発動処理
#
# @within function asset:mob/0365.frestchika_v2/ai/projectile/thunder/3.tick

# 演出
    particle soul_fire_flame ~ ~3 ~ 0.3 3 0.3 0 30 force @a[distance=..32]
    particle dust 0 0.8 100000000 0.7 ~ ~5 ~ 0.5 4 0.5 0 80 force @a[distance=..32]
    particle dust 0 0.8 100000000 1 ~ ~3 ~ 0.75 2 0.75 1 80 force @a[distance=..32]
    particle dust 0 0.8 100000000 1.3 ~ ~1 ~ 1 1.5 1 1 80 force @a[distance=..32]
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 4 force @a[distance=..32]
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50 force @a[distance=..32]

    playsound entity.lightning_bolt.thunder hostile @a[distance=..32] ~ ~ ~ 0.5 2
    playsound entity.lightning_bolt.thunder hostile @a[distance=..32] ~ ~ ~ 0.5 2
    playsound entity.lightning_bolt.impact hostile @a[distance=..32] ~ ~ ~ 0.5 0

# ダメージ設定
    # 与えるダメージ
        # ノーマルなら 32f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 32.0f
        # ハードなら 45f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 45.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷を受けて感電してしまった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ
        execute as @e[tag=this,distance=..100] run function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] at @s run function lib:damage/
# リセット
    function lib:damage/reset