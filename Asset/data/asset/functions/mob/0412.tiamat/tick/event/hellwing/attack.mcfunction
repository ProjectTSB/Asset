#> asset:mob/0412.tiamat/tick/event/hellwing/attack
#
# ヘルウィング
#
# @within
#    function asset:mob/0412.tiamat/tick/event/hellwing/
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 30
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    execute positioned ^ ^ ^10 run function lib:rotatable_dxyz/m with storage lib: args
# ダメージ
    data modify storage api: Argument.Damage set value 55.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Ice"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a remove DXYZ

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
# 円型ベクトルパーティクル
# 円 1
    execute rotated ~00 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~10 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~20 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~30 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~40 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~50 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~60 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~70 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~80 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~90 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~100 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~110 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~120 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~130 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~140 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~150 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~160 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~170 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~180 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~190 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~200 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~210 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~220 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~230 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~240 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~250 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~260 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~270 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~280 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~290 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~300 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~310 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~320 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~330 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~340 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~350 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0

# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYcRAxgMwBsVATDQLQBGVAnBUwCwBmFXFr15Um7ehXoBWAAxEqADhlxeYXBgCGAWwTJAW74ACAIxqwMDQCdtAZyTgKAezwYISIwty8LDrXbAA3DRQ8XXAADyQZXCgkJnoZAF8E3AgHP0Dg0LAIxCNopG5E5LAHYWs4V0QosBY4AC80OAtI3DRrACF6xosAUQBHPCCUKABlcwpyJF4g8qSAXSA_3
# 線 1
execute positioned ^0 ^ ^-20 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.05882 ^ ^-16.47059 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.11765 ^ ^-12.94118 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.17647 ^ ^-9.41176 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.23529 ^ ^-5.88235 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.29412 ^ ^-2.35294 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.35294 ^ ^1.17647 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.41176 ^ ^4.70588 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.47059 ^ ^8.23529 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.52941 ^ ^11.76471 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.58824 ^ ^15.29412 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.64706 ^ ^18.82353 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.70588 ^ ^22.35294 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.76471 ^ ^25.88235 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.82353 ^ ^29.41176 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.88235 ^ ^32.94118 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0.94118 ^ ^36.47059 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^1 ^ ^40 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
