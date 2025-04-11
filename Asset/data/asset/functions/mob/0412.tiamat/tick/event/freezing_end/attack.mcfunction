#> asset:mob/0412.tiamat/tick/event/freezing_end/attack
#
# ブレイジングエンド
#
# @within asset:mob/0412.tiamat/tick/event/freezing_end/

# ダメージ
    data modify storage api: Argument.Damage set value 75.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..40] run function api:damage/
    function api:damage/reset

# 演出
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.5
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 0.7
    particle block ice ~ ~1 ~ 10 1 10 0.1 100 force
    particle explosion ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force

    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [22f,22f,22f]
    data modify storage api: Argument.FieldOverride.OverrideKillTick set value 24
    function api:object/summon
    data modify storage api: Argument.ID set value 2175
    execute rotated ~ ~ positioned ^ ^ ^8 run function api:object/summon
    data modify storage api: Argument.ID set value 2175
    execute rotated ~30 ~ positioned ^ ^ ^10 run function api:object/summon
    data modify storage api: Argument.ID set value 2175
    execute rotated ~70 ~ positioned ^ ^ ^9 run function api:object/summon
    data modify storage api: Argument.ID set value 2175
    execute rotated ~165 ~ positioned ^ ^ ^12 run function api:object/summon
    data modify storage api: Argument.ID set value 2175
    execute rotated ~204 ~ positioned ^ ^ ^13 run function api:object/summon

# 演出用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BG.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BG.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BG.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BG.Temp.AttackPosition"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["BG.Temp.AttackPosition"]}
    spreadplayers ~ ~ 6 15 false @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition]

# 演出
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~10 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~20 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~30 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~40 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~50 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~60 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~70 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~80 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~90 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~100 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~110 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~120 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~130 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~140 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~150 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~160 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~170 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~180 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~190 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~200 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~210 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~220 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~230 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~240 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~250 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~260 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~270 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~280 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~290 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~300 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~310 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~320 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~330 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~340 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
        execute rotated ~350 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000015 0
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~10 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~20 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~30 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~40 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~50 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~60 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~70 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~80 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~90 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~100 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~110 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~120 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~130 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~140 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~150 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~160 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~170 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~180 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~190 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~200 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~210 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~220 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~230 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~240 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~250 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~260 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~270 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~280 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~290 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~300 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~310 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~320 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~330 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~340 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
        execute rotated ~350 0 positioned ^ ^-0.3 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000025 0
