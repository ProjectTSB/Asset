#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack

# 効果音
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.5
    playsound entity.iron_golem.death hostile @a ~ ~ ~ 2 0.5
    playsound entity.wither.break_block hostile @a ~ ~ ~ 2 0.7

# 斬撃オブジェクト
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:9484241,Scale:[40f,40f,7f],Transformation:{left_rotation:[0f,-0.7068252f,0f,0.7073883f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^8 ^-18 run function api:object/summon

# パーティクル
    particle explosion ~ ~1 ~ 5 2 5 0 30
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
