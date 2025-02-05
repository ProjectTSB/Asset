#> asset:object/2154.haruclaire_super_icebullet/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2154/kill

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは おっきなこおりに つぶされた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5.5] run function api:damage/
    function api:damage/reset

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0.5 30
    particle firework ~ ~ ~ 1 1 1 0.5 80
    particle firework ~ ~ ~ 1 1 1 0.1 30
    particle cloud ~ ~ ~ 1 1 1 0.2 80
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.8
    playsound block.glass.break hostile @a ~ ~ ~ 2 0.8
    # 円型ベクトルパーティクル
    # 円 1
        execute rotated ~00 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~10 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~20 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~30 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~40 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~50 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~60 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~70 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~80 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~90 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~100 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~110 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~120 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~130 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~140 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~150 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~160 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~170 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~180 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~190 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~200 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~210 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~220 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~230 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~240 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~250 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~260 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~270 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~280 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~290 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~300 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~310 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~320 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~330 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~340 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
        execute rotated ~350 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000004 0
    # 円 1
        execute rotated ~00 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~10 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~20 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~30 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~40 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~50 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~60 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~70 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~80 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~90 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~100 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~110 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~120 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~130 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~140 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~150 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~160 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~170 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~180 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~190 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~200 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~210 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~220 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~230 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~240 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~250 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~260 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~270 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~280 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~290 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~300 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~310 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~320 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~330 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~340 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0
        execute rotated ~350 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000006 0

# 攻撃位置召喚
    summon area_effect_cloud ~ ~2 ~ {Tags:["2154.AttackRotation"],Duration:1}

# 弾召喚
    execute store result score @e[type=area_effect_cloud,tag=2154.AttackRotation,sort=nearest,limit=1] MobUUID run data get storage asset:context this.MobUUID
    execute as @e[type=area_effect_cloud,tag=2154.AttackRotation,sort=nearest,limit=1] at @s run function asset:object/2154.haruclaire_super_icebullet/kill/summon_piece

# 消滅
    kill @s
