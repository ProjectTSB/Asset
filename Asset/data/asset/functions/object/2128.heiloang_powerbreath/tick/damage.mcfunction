#> asset:object/2128.heiloang_powerbreath/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2128.heiloang_powerbreath/tick/


# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5.5] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.6
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    particle flash ~ ~5 ~ 1 5 1 0 30
    particle explosion ~ ~1 ~ 2 1 2 0 20
    # 円型ベクトルパーティクル
    # 円 1
        execute rotated ~00 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~10 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~20 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~30 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~40 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~50 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~60 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~70 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~80 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~90 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~100 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~110 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~120 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~130 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~140 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~150 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~160 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~170 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~180 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~190 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~200 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~210 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~220 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~230 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~240 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~250 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~260 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~270 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~280 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~290 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~300 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~310 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~320 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~330 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~340 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
        execute rotated ~350 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    # 円 1
        execute rotated ~00 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~10 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~20 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~30 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~40 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~50 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~60 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~70 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~80 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~90 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~100 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~110 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~120 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~130 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~140 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~150 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~160 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~170 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~180 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~190 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~200 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~210 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~220 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~230 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~240 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~250 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~260 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~270 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~280 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~290 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~300 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~310 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~320 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~330 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~340 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
        execute rotated ~350 0 positioned ^ ^0.5 ^1.8 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.00000003 0
