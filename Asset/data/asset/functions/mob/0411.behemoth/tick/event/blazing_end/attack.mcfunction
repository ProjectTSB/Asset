#> asset:mob/0411.behemoth/tick/event/blazing_end/attack
#
# ブレイジングエンド
#
# @within asset:mob/0411.behemoth/tick/event/blazing_end/

# ダメージ
    data modify storage api: Argument.Damage set value 75.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..40] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.8
    particle soul_fire_flame ~ ~1 ~ 20 1 20 0.1 100 force
    particle explosion ~ ~1 ~ 20 1 20 0.1 200 force
    particle flash ~ ~1 ~ 20 1 20 0.1 60 force

# 演出用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BF.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BF.Temp.AttackPosition"]}
    spreadplayers ~ ~ 6 15 false @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition]

# 演出
    particle explosion ~ ~ ~ 5 0.1 5 0 30
    particle block stone_bricks ~ ~ ~ 5 0.5 5 0 100
    playsound entity.wither.break_block hostile @a ~ ~ ~ 3 0.7
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~10 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~20 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~30 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~40 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~50 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~60 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~70 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~80 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~90 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~100 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~110 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~120 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~130 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~140 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~150 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~160 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~170 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~180 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~190 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~200 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~210 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~220 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~230 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~240 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~250 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~260 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~270 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~280 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~290 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~300 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~310 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~320 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~330 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~340 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~350 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~10 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~20 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~30 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~40 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~50 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~60 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~70 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~80 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~90 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~100 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~110 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~120 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~130 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~140 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~150 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~160 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~170 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~180 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~190 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~200 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~210 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~220 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~230 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~240 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~250 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~260 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~270 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~280 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~290 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~300 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~310 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~320 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~330 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~340 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~350 0 positioned ^ ^-0.3 ^ run particle soul_fire_flame ~ ~ ~ ^ ^ ^100000000 0.000000025 0
