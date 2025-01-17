#> asset:mob/0411.behemoth/tick/event/flatten/attack
#
# フラッテン
#
# @within asset:mob/0411.behemoth/tick/event/flatten/

# ダメージ
    data modify storage api: Argument.Damage set value 55.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
    function api:damage/reset

# 演出
    particle explosion ~ ~ ~ 3 0.5 3 0 30
    particle block stone_bricks ~ ~ ~ 3 0.5 3 0 100
    playsound entity.wither.break_block hostile @a ~ ~ ~ 3 0.7
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~10 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~20 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~30 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~40 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~50 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~60 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~70 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~80 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~90 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~100 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~110 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~120 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~130 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~140 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~150 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~160 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~170 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~180 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~190 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~200 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~210 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~220 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~230 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~240 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~250 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~260 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~270 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~280 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~290 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~300 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~310 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~320 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~330 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~340 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~350 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~10 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~20 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~30 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~40 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~50 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~60 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~70 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~80 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~90 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~100 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~110 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~120 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~130 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~140 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~150 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~160 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~170 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~180 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~190 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~200 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~210 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~220 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~230 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~240 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~250 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~260 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~270 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~280 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~290 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~300 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~310 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~320 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~330 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~340 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~350 0 positioned ^ ^ ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
