#> asset:effect/0232.soul_fire/fullset/equip
# @within function asset:effect/0232.soul_fire/*given/

# 補正
    # 火攻撃+10%
        data modify storage api: Argument.UUID set value [I;1,3,232,0]
        data modify storage api: Argument.Amount set value 0.1
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/fire/add

    # MP回復量+8%
        data modify storage api: Argument.UUID set value [I;1,3,232,0]
        data modify storage api: Argument.Amount set value 0.08
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/mp_regen/add

    # 最大体力-10%
        data modify storage api: Argument.UUID set value [I;1,3,232,0]
        data modify storage api: Argument.Amount set value -0.1
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/max_health/add

# 演出
    # 1つ目の円
        execute rotated ~0 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~30 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~60 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~90 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~120 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~150 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~180 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~210 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~240 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~270 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~300 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~330 0 positioned ^ ^0.2 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a

    # 2つ目の円
        execute rotated ~0 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~20 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~40 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~60 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~80 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~100 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~120 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~140 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~160 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~180 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~200 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~220 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~240 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~260 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~280 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~300 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~320 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~340 0 positioned ^ ^0.2 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a

    # 2つ目の円
        execute rotated ~0 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~10 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~20 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~30 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~40 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~50 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~60 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~70 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~80 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~90 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~100 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~110 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~120 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~130 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~140 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~150 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~160 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~170 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~180 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~190 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~200 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~210 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~220 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~230 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~240 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~250 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~260 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~270 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~280 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~290 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~300 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~310 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~320 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~330 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~340 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~350 0 positioned ^ ^0.2 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a

    # 4つ目の円
        execute rotated ~0 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~5 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~10 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~15 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~20 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~25 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~30 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~35 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~40 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~45 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~50 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~55 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~60 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~65 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~70 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~75 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~80 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~85 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~90 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~95 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~100 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~105 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~110 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~115 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~120 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~125 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~130 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~135 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~140 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~145 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~150 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~155 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~160 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~165 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~170 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~175 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~180 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~185 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~190 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~195 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~200 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~205 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~210 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~215 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~220 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~225 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~230 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~235 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~240 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~245 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~250 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~255 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~260 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~265 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~270 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~275 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~280 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~285 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~290 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~295 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~300 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~305 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~310 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~315 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~320 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~325 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~330 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~335 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~340 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~345 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~350 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~355 0 positioned ^ ^0.2 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a

    # ここより下はsoul_fire ver

    # 1つ目の円
        execute rotated ~0 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~30 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~60 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~90 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~120 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~150 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~180 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~210 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~240 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~270 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~300 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a
        execute rotated ~330 0 positioned ^ ^0 ^0.8 facing entity @s feet rotated ~ ~-5 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000001 0 normal @a

    # 2つ目の円
        execute rotated ~0 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~20 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~40 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~60 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~80 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~100 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~120 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~140 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~160 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~180 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~200 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~220 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~240 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~260 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~280 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~300 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~320 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~340 0 positioned ^ ^0 ^1.2 facing entity @s feet rotated ~ ~-20 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a

    # 2つ目の円
        execute rotated ~0 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~10 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~20 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~30 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~40 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~50 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~60 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~70 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~80 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~90 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~100 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~110 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~120 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~130 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~140 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~150 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~160 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~170 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~180 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~190 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~200 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~210 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~220 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~230 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~240 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~250 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~260 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000003 0 normal @a
        execute rotated ~270 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~280 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~290 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~300 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~310 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~320 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~330 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~340 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a
        execute rotated ~350 0 positioned ^ ^0 ^1.6 facing entity @s feet rotated ~ ~-40 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000002 0 normal @a

    # 4つ目の円
        execute rotated ~0 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~5 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~10 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~15 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~20 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~25 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~30 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~35 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~40 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~45 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~50 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~55 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~60 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~65 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~70 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~75 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~80 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~85 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~90 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~95 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~100 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~105 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~110 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~115 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~120 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~125 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~130 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~135 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~140 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~145 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~150 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~155 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~160 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~165 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~170 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~175 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~180 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~185 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~190 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~195 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~200 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~205 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~210 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~215 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~220 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~225 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~230 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~235 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~240 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~245 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~250 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~255 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~260 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~265 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~270 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~275 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~280 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~285 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~290 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~295 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~300 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~305 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~310 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~315 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~320 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~325 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~330 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~335 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~340 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~345 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~350 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
        execute rotated ~355 0 positioned ^ ^0 ^2.0 facing entity @s feet rotated ~ ~-50 run particle soul_fire_flame ~ ~ ~ ^ ^ ^300000000 0.0000000004 0 normal @a
