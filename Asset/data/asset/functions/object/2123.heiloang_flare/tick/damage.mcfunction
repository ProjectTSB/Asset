#> asset:object/2123.heiloang_flare/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2123.heiloang_flare/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.7
    particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
    particle flame ~ ~1 ~ 0.1 0.1 0.1 0.5 30
    particle lava ~ ~1 ~ 0.5 0.5 0.5 0.5 30

# 移動
    tp @s ^ ^ ^5.5

# 円 1
    particle flame ^0 ^ ^-5 0 0 0 0.05 1
    particle flame ^0.80206 ^ ^-4.93525 0 0 0 0.05 1
    particle flame ^1.58334 ^ ^-4.74268 0 0 0 0.05 1
    particle flame ^2.32362 ^ ^-4.42728 0 0 0 0.05 1
    particle flame ^3.00371 ^ ^-3.99721 0 0 0 0.05 1
    particle flame ^3.60601 ^ ^-3.46362 0 0 0 0.05 1
    particle flame ^4.11492 ^ ^-2.84032 0 0 0 0.05 1
    particle flame ^4.51725 ^ ^-2.14346 0 0 0 0.05 1
    particle flame ^4.80259 ^ ^-1.39109 0 0 0 0.05 1
    particle flame ^4.96354 ^ ^-0.60268 0 0 0 0.05 1
    particle flame ^4.99594 ^ ^0.20133 0 0 0 0.05 1
    particle flame ^4.89895 ^ ^1.00013 0 0 0 0.05 1
    particle flame ^4.67508 ^ ^1.77302 0 0 0 0.05 1
    particle flame ^4.33013 ^ ^2.5 0 0 0 0.05 1
    particle flame ^3.87302 ^ ^3.16223 0 0 0 0.05 1
    particle flame ^3.31561 ^ ^3.74255 0 0 0 0.05 1
    particle flame ^2.67233 ^ ^4.22595 0 0 0 0.05 1
    particle flame ^1.95983 ^ ^4.5999 0 0 0 0.05 1
    particle flame ^1.19658 ^ ^4.85471 0 0 0 0.05 1
    particle flame ^0.40233 ^ ^4.98379 0 0 0 0.05 1
    particle flame ^-0.40233 ^ ^4.98379 0 0 0 0.05 1
    particle flame ^-1.19658 ^ ^4.85471 0 0 0 0.05 1
    particle flame ^-1.95983 ^ ^4.5999 0 0 0 0.05 1
    particle flame ^-2.67233 ^ ^4.22595 0 0 0 0.05 1
    particle flame ^-3.31561 ^ ^3.74255 0 0 0 0.05 1
    particle flame ^-3.87302 ^ ^3.16223 0 0 0 0.05 1
    particle flame ^-4.33013 ^ ^2.5 0 0 0 0.05 1
    particle flame ^-4.67508 ^ ^1.77302 0 0 0 0.05 1
    particle flame ^-4.89895 ^ ^1.00013 0 0 0 0.05 1
    particle flame ^-4.99594 ^ ^0.20133 0 0 0 0.05 1
    particle flame ^-4.96354 ^ ^-0.60268 0 0 0 0.05 1
    particle flame ^-4.80259 ^ ^-1.39109 0 0 0 0.05 1
    particle flame ^-4.51725 ^ ^-2.14346 0 0 0 0.05 1
    particle flame ^-4.11492 ^ ^-2.84032 0 0 0 0.05 1
    particle flame ^-3.60601 ^ ^-3.46362 0 0 0 0.05 1
    particle flame ^-3.00371 ^ ^-3.99721 0 0 0 0.05 1
    particle flame ^-2.32362 ^ ^-4.42728 0 0 0 0.05 1
    particle flame ^-1.58334 ^ ^-4.74268 0 0 0 0.05 1
    particle flame ^-0.80206 ^ ^-4.93525 0 0 0 0.05 1

# 円型ベクトルパーティクル
# 円 1
    execute rotated ~00 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~10 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~20 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~30 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~40 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~50 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~60 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~70 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~80 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~90 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~100 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~110 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~120 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~130 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~140 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~150 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~160 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~170 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~180 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~190 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~200 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~210 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~220 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~230 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~240 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~250 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~260 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~270 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~280 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~290 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~300 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~310 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~320 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~330 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~340 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    execute rotated ~350 0 positioned ^ ^ ^ run particle flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0

# ノーマル以下では攻撃範囲予告
    execute if predicate api:global_vars/difficulty/min/hard run return 0

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 27
    execute positioned as @s positioned ~ ~0.5 ~ run function api:object/summon
